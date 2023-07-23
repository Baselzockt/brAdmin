-- Meta class
---@class Reactor
Reactor = {
    reactorId = "",
    maxRfPerTick = 0,
    controllRodCount = 0,
    batteryCapacity = 0,
    fuelCapacity = 0
}

-- Base class method new
function Reactor:new()
    local o = {}
    setmetatable(o,self)
    self.__index = self
    self.reactorId = nil
    self.maxRfPerTick = 0
    self.controllRodCount = 0
    self.batteryCapacity = 0
    self.fuelCapacity = 0
    return o
end