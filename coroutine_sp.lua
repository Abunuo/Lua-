local newProducer

function productor()
  local i = 0
  while true do
    i = i + 1
    send(i)
  end
end

function consumer()
  local j = 0
  while j < 3 do
    local status, value = receive()
    j = j + 1
    print(status,value)
  end
end

function receive()
  local status, value = coroutine.resume(newProducer)
  return status, value

end

function send(x)
  coroutine.yield(x)
end

print('--------启动程序--------')
newProducer = coroutine.create(productor)

consumer()
