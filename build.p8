pico-8 cartridge // http://www.pico-8.com
version 41
__lua__

#include libbuild.p8lua
#include lzcomp.p8lua
#include src/lzdecomp.p8lua

#include serialize_table.p8lua
#include datatables.p8lua

toc_header_len = 2
max_file_index = 1 + max_level + 1

-- contents written to master cart
-- ========
-- * header:
--   * length (in bytes) of entire compressed filesystem
-- * toc:
--   * 0: 2-byte address (not counting header above) of spritesheet
--   * 1: 2-byte address (not counting header above) of level 0
--   * 2: 2-byte address (not counting header above) of level 
--   * 3: etc.
--   * n: first few datatables

dst_addr = 0x0
dst_len  = 0x3000

-- temporary compressed data RAM section 
tmp_addr = 0x4300

function _init()
	paramlevel = tonum(stat(6))
		
	-- zero out all builder cart data
	memset(0x0, 0, 0x5e00)

	-- copy existing toc and compressed filesystem from master cart
	reload(dst_addr, dst_addr, dst_len, master_cart)
	toc = read_toc()

	if paramlevel then
		if paramlevel >= 0 then
			-- compress and store only the level specified in the load() param
			store_level(paramlevel)
		elseif paramlevel == -1 then
			-- compress and store only the spritesheet
			store_spritesheet()
		end
	else
		-- make an empty table of contents
		local default_toc = {}
		local minaddr = toc_header_len + (max_file_index + 1) * 2
		for i = 0, max_file_index do
			default_toc[i] = {addr = minaddr, len = 0}
		end
		write_toc(default_toc)
		toc = default_toc

		-- compress and store the spritesheet
		store_spritesheet()

		-- compress and store each level
		for l = 0, max_level do
			store_level(l)
		end

		-- compress and store the first few datatables
		store_datatables(compressed_datatable_count)
	end

	-- store compressed filesystem to master cart
	toc = read_toc()
	print_toc(toc)
	local totallen = get_total_length(toc)
	local freespace = dst_len - totallen
	printh("total legnth: " .. totallen)
	printh(
		flr((totallen / dst_len) * 100) .. "% used " ..
		"(" .. freespace .. " bytes left)"
	)

	local normallevellen = 0
	for i = 2, max_level do
		local file = toc[i]
		normallevellen += file.len
	end
	local avglevelsize = flr(normallevellen / max_level)
	printh("average normal level size: " .. avglevelsize)
	printh(
		"(spazio per circa altri " .. flr(freespace / avglevelsize) .. " livelli)"
	)

	-- zero out all data at end of filesystem
	memset(totallen, 0, dst_len - totallen)

	print("writing compressed data to master cart")
	cstore(dst_addr, dst_addr, dst_len, master_cart)

	-- run the master cart
	local editorcmd
	if paramlevel then
		if paramlevel == 0 then
			editorcmd = "start_overworld"
		elseif paramlevel > 0 then
			editorcmd = "start_level" .. "," .. paramlevel .. ",true"
		end
	end
	load(master_cart, nil, editorcmd)
end

function print_toc(toc)
	printh("===")
	printh("table of contents:")
	for i = 0, max_file_index do
		local file = toc[i]
		local index = pad0(i)
		local addr = tostr(file.addr, 0x1)
		local len = tostr(file.len)
		local firstbyte = tostr(peek(0x8000 + file.addr), 0x1)

		printh(index.. ' ' .. addr .. ' ' .. len .. ' (' .. firstbyte .. ')')
	end
end

function store_raw(i, src, len, filename, compv)
	reload(0x8000, src, len, filename)
	print("compressing file " .. i)
	local len2 = lz_comp(0xc000, 0x8000, len, flr(254 * compv))

	print(len .. " -> " .. len2)
	store_file_inner(i, 0xc000, len2)
end

function store_level(l)
	assert(l >= 0 and l <= max_level, "level number out of bounds")

	-- use high user data as map
	poke(0x5f56, 0x80)

	reload(0x8000, 0x2000, 0x1000, "level/" .. pad0(l) .. ".p8")
	reload(0x9000, 0x1000, 0x1000, "level/" .. pad0(l) .. ".p8")

	local maxmy = l == 21 and 63 or 47
	local x1, y1, x2, y2 = detect_level_bounds(maxmy)
	local w, h = (x2 - x1) + 1, (y2 - y1) + 1
	local len = w * h

	print("compressing level " .. l .. " (" .. w .. "x" .. h .. ")")
	local len2 = comp_level(0x4300, x1, y1, w, h)
	print(len .. ' -> ' .. len2)

	store_file_inner(l + 1, 0x4300, len2)
end

function read_toc()
	local toc = {}

	for i = 0, max_file_index do
		local addr = toc_lookup(i)
		local len = peek2(addr) + 2

		toc[i] = {
			addr = addr,
			len = len
		}
	end
	
	return toc
end

function get_total_length(toc)
	local lastfile = toc[max_file_index]
	return lastfile.addr + lastfile.len
end

function write_toc(toc)
	poke2(0, get_total_length(toc))

	for i, file in pairs(toc) do
		poke2(toc_header_len + (i * 2), file.addr)
	end
end

function store_file_inner(i, src, len)
	print("storing file " .. i)

	-- copy entire filesystem to tmp space
	memcpy(0x8000, dst_addr, dst_len)

	-- copy the new file's contents to the correct position
	memcpy(toc[i].addr, src, len)
	toc[i].len = len

	-- update the TOC entries for all subsequent files
	for j = i + 1, max_file_index do
		local prevfile = toc[j - 1]
		local oldaddr = 0x8000 + toc[j].addr
		local newaddr = prevfile.addr + prevfile.len

		memcpy(newaddr, oldaddr, toc[j].len)
		toc[j].addr = newaddr
	end

	write_toc(toc)
end

function store_spritesheet()
	store_raw(0, 0x0, 0x2000, "spritesheet.p8", 0.33)
end

function store_datatables(count)
	local index = max_file_index

	local addr = 0x8000
	for i = 1, count do
		local t = data_tables[i]
		addr = serialize_table(addr, t)
	end
	local len = addr - 0x8000

	print("compressing file " .. index)
	local compv = 0.33
	local len2 = lz_comp(0xc000, 0x8000, len, flr(254 * compv))

	print(len .. " -> " .. len2)
	store_file_inner(index, 0xc000, len2)
end

function toc_lookup(i)
	return peek2(toc_header_len + (i * 2))
end

function detect_level_bounds(maxmy)
	local y1, y2 = 32767, 0
	local x1, x2 = 32767, 0

	for my = 0, maxmy do
		for mx = 0, 127 do
			if mget(mx, my) ~= 0 then
				y1 = min(y1, my)
				y2 = max(y2, my)
				x1 = min(x1, mx)
				x2 = max(x2, mx)
			end
		end
	end

	return x1, y1, x2, y2
end
