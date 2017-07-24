tab = {[1]='a', 'b', ['2']='c', ['3']='d'}
metaTab = {['test']='ttt',__index={['2']='aaaa'}}
setmetatable(tab, metaTab) -- 把 metatab 设置为 tab 的元表
-- 以上代码相当于： tab = setmetatable({}, {})
-- 元表中数据不能用 pairs 遍历出来

table.sort(tab)
for k,v in pairs(tab) do
  print(v)
end
print('----------------------')
tab1 = setmetatable({['1']='a'}, {__index={['2']='b'}, ['3']='c'})
for k, v in pairs(tab1) do   --仅遍历表 tab1，不会遍历元表
  print(k, v)
end
print('--------')
for k, v in pairs(getmetatable(tab1)) do  --获取 tab1元表并遍历
  print(k, v)
end
print('--------')
print(tab1['2'])
print('----------------------')

print(getmetatable(tab) == metaTab)
print(getmetatable(tab)['test']);
