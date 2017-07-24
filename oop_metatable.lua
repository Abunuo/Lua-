shape = {}

function shape:new(o, side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side^2
  return o
end

function shape:printArea()
  print('面积为', shape.area)
end
