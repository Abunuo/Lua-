file = io.open('io/file.txt', 'r')

print(file:read('*a'))

file: close()

print('--------------')

file = io.open('io/file.txt', "a")

-- file: write('我是安全模式新加内容');

file: close()

file = io.open('io/file.txt', 'r')

print(file:read('*l'))

print('---------------')

print(file: seek())  --当前文件指针位置
print(file: seek('set', 11))  --设置当前文件指针位置

print('---------------')

file: close()

file = io.open('io/input.txt', 'w')
index = 1
for line in io.lines('io/file.txt') do
  file: write(line..index..'\n');
  index = index + 1
end
file: close()
