co = coroutine.create(   --需要唤醒  suspended状态 ，返回 coroutine
    function(i)
      print(coroutine.status(co))  --running 运行中
      print(coroutine.running())
      print(i)
    end
)
print(coroutine.status(co))  --suspended 暂停的
coroutine.resume(co, 1);

print(coroutine.status(co))  --dead  死的

print('-----------')

co1 = coroutine.wrap(   --返回一个函数，调用则进入 corotin
  function(i)
    print(i)
  end
)
co1(1)

print('-----------')

co2 = coroutine.create(
  function(i)
    for i = 1, 10 do
      if i == 3 then
        print(coroutine.status(co2))
        print(coroutine.running())
      end
      print(i)
      coroutine.yield()
    end
  end
)
coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)

print(coroutine.status(co2))
print(coroutine.running())

print('----------')
