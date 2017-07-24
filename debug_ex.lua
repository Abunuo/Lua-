function newCounter()
  local n = 0
  local k = 0
  local m = 3
  return function()
    k = n
    n = n + 1
    m = n
    return n
  end
end

counter = newCounter()
print(counter())
print(counter())

local i = 1

repeat
  name, val = debug.getupvalue(counter, i)   --循环（ i 为第几个变量）获取内部函数的局部变量，根据变量声明顺序输出
  if name then
    print('index', i, name, '=', val )
    if(debug.getupvalue(counter, i+1) == nil) then   --当不存在第 n 个变量是，返回值为空，即等于
      debug.setupvalue(counter, 2, 11)    --设置内部函数出现的变量值（函数名， 第几个变量， 设置新值）
    end
    i = i + 1
  end
until not name

print(counter())
