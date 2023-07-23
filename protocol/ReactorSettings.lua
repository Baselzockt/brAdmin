-- Meta class
---@class ReactorSettings
ReactorSettings = {
    active = false,
    reactorId = "",
    targetRfProduction = 0,
    minBuffer = 0,
    maxBuffer = 1,
    preferedBuffer = 0.5,
    updateRate = 0
}

-- Base class method new
function ReactorSettings:new()
    local o = {}
    setmetatable(o,self)
    self.__index = self
    self.active = false
    self.reactorId = nil
    self.targetRfProduction = nil
    self.minBuffer = 0
    self.preferedBuffer = 0.5
    self.maxBuffer = 1
    self.updateRate = 5
end