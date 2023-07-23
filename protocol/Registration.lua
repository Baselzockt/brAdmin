-- Meta class
---@class Registration
Registration = {
    computerId = 0,
    reactors = {}
}

-- Base class method new
function Registration:new()
    local o = {}
    setmetatable(o,self)
    self.__index = self
    self.computerId = nil
    self.reactors = {}
    return o
end