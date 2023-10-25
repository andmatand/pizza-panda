pico-8 cartridge // http://www.pico-8.com
version 41
__lua__

#include libbuild.p8lua
#include datatables.p8lua
#include src/deserialize_table.p8lua
#include serialize_table.p8lua

function escape_binary_str(s)
 local out=""
 for i=1,#s do
  local c  = sub(s,i,i)
  local nc = ord(s,i+1)
  local pr = (nc and nc>=48 and nc<=57) and "00" or ""
  local v=c
  if(c=="\"") then v="\\\"" end
  if(c=="\\") then v="\\\\" end
  if(ord(c)==0) then v="\\"..pr.."0" end
  if(ord(c)==10) then v="\\n" end
  if(ord(c)==13) then v="\\r" end
  out..= v
 end
 return out
end

local addr = 0x8000
for i = compressed_datatable_count + 1, #data_tables do
	local t = data_tables[i]
	addr = serialize_table(addr, t)
end
local len = addr - 0x8000
print('len: ' .. tostr(len, true) .. ' (' .. len .. ')')

local binstr = ''
for j = 0x8000, 0x8000 + len - 1 do
	binstr ..= chr(@j)
end
printh('bindatatables = "' .. escape_binary_str(binstr) .. '"', "@clip")
print('copied data string to clipboard')
print('(paste it into bindata.p8)')
