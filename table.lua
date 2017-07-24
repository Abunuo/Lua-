tab = {'123', [1] = '2', '1234', '1111'}
print('tab 的类型为：', type(tab))
print(tab[1])

tab[1] = 'Lua'
tab['wow'] = '修改前'
print('tab 索引为1的元素是:'..tab[1])
print('tab 索引为 wow 的元素是:'..tab['wow'])

--alertTab 和 tab 指向同一个地址
alertTab = tab
print(alertTab[1])
print(alertTab['wow'])

alertTab['wow'] = '修改后'
print('tab 修改前 wow 属性:'..tab['wow'])
print('alertTab 修改后 wow 属性:'..alertTab['wow'])

print('排序前的 tab 表：')
for k, v in pairs(tab) do
  print(k..'---'..v)
end
table.sort(tab)
print('排序后的 tab 表：')
for k, v in pairs(tab) do
  print(k..'---'..v)
end

--释放变量
alertTab = nil
-- print('alertTab 是：'..alertTab) --不能打印 alertTab
print('alertTab 是：',alertTab)
print('tab 是：',tab)
tab = nil
print('tab 是：',tab)
