
--[[local function add(a,b)
   assert(type(a) == "number", "a 不是一个数字")
   assert(type(b) == "number", "b 不是一个数字")
   return a+b
end
add(10)

--[[
local function add(a,b)
  if(type(a) ~= "number") then
    error("a 不是一个数字")
  end
  if(type(b) ~= "number") then
    error("b 不是一个数字")
  end
  print('123')
end
add(10)]]--
