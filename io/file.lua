file = io.open('./io/file.txt')
io.input(file)  --将打开的 file 存放到 io 中

print(io.read())

io.close(file)

file1 = io.open('io/file.txt', 'a+')
io.output(file1)

io.write('我是新加的内容\n')

io.close(file1)

print('-----------')

file2 = io.open('./io/file.txt')

io.input(file2)
print(io.read('*n'))
print('读取12个字符：'..io.read(12)) -- UTF_8 汉字占3个字符
print('第一行：'..io.read())
print('第二行：'..io.read())
print('第三行：'..io.read('*l'))
print('剩下全部：'..io.read('*a'))
io.close(file2)
