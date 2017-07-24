 --print("hello world")   --单行注释  --[[   ]]--多行注释
 -- print("hello");

--[[
a = {}
a['key'] = 'value'
key = 22
a[22] = 33
a[key] = a[22] + 22
-- for k, v in pairs(a) do
--   print(k..":"..v)
-- end
print(a['key']) --value
print(a[key])  --55
print(a[22]) --55
]]--

--[[
local tb = {'apple', 'pear', 'orange', 'grape'}
for a, b in pairs(tb) do
  -- print(a..":"..b)
  print("a", a, "b", b)
end
]]--


a3 = {}
a3[12] = 11
a3['a'] = 'b'
a3['key'] = 'value'
for i = 1, 10 do
  a3[i] = i
end
print(#a3)

print(a3['key'])
print(a3['none'])
for key, value in pairs(a3) do
  print(key..'----'..value)
end

for k=1,  #a3 do
  print(a3[k])
end
