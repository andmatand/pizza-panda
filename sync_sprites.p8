pico-8 cartridge // http://www.pico-8.com
version 41
__lua__

#include libbuild.p8lua

src_filename = "spritesheet.p8"

function sync_to_cart(filename)
	print(filename)

	-- copy pages 0-1
	cstore(0x0, 0x0, 0x1000, filename)

	-- copy page 3
	cstore(0x1800, 0x1800, 0x0800, filename)

	-- copy gfx flags
	cstore(0x3000, 0x3000, 0x0100, filename)
end

print("syncing spritesheet to other carts")

-- load the spritesheet
reload(0x0, 0x0, 0x2000, src_filename)

-- load the gfx flags
reload(0x3000, 0x3000, 0x0100, src_filename)

for l = 0, max_level do
	local filename = "level/" .. pad0(l) .. ".p8"
	sync_to_cart(filename)
end

-- copy gfx flags to master cart
print("syncing gfx flags to master cart")
cstore(0x3000, 0x3000, 0x0100, master_cart)

print("done")

load("build.p8", nil, -1)
