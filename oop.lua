-- Meta class
Shape = {}

-- 基础类方法 new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.a = 12
  self.area = side*side;
  setmetatable(self, {b = 6})
  return o
end

-- 基础类方法 printArea
function Shape:printArea ()
  print("面积为 ",self.area)
end

-- 创建对象
myshape = Shape:new(nil,10)

myshape:printArea()

print('--------------------------')

-- 继承
Square = Shape:new()

function Square:new(o, side)
  o = o or Shape:new(o, side)
  setmetatable(o, self)
  side = side or 0
  self.__index = self
  self.area = side^2
  return o
end

function Square:printArea()
  print('正方形面积:',self.area)
end

mySquare = Square:new(nil, 20)
mySquare:printArea()


print('----------------------------')


Rectangle = Shape:new()

function Rectangle:new(o, length, breach)
  o = o or Shape:new(o)
  setmetatable(o, self)
  self.__index = self
  length = length or 0
  breach = breach or 0
  self.area = length * breach
  return o
end

function Rectangle:printArea()
  print('矩形的面积：', self.area)
end

myRenctangle = Rectangle:new(nil, 10, 20)
myRenctangle:printArea()
