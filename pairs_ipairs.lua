tab= {
[1] = 6,
'l',
'm',
['16'] = "a",
['15'] = 'e',
[4] = "c",
[3] = "b",
}
for i,v in pairs(tab) do        -- 输出 "a" ,"b", "c"  ,
    print( i..':'..tab[i] )
end
print('--------')
print(#tab)  --当[2] =  'b'是，输出4；当[3]='b'是，输出1  ？？？？？？？？？？
print('--------')


for i,v in ipairs(tab) do    -- 输出 "a" ,k=2时断开
    print( i..':'..tab[i] )
end
