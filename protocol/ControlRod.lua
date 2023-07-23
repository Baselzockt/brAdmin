-- Meta clas
---@class ControlRod
ControlRod = {index = 0, level = 0, name = "", valid = false}

-- Derived class method new

function ControlRod:new ()
    local o = {}
    setmetatable(o, self)
    self.__index = self
    self.index = 0
    self.level = 0
    self.name = ""
    self.valid = false
    return o
end