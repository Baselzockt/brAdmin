-- Meta class
---@class ReactorUpdate
ReactorUpdate = {
    timestamp = 0, 
    active = false, 
    controlRodCount = 0, 
    casingTemperature = 0, 
    ambientTemperature = 0,
    batteryCapacity = 0,
    producedLastTick = 0,
    energyStored = 0,
    burnedFuelLastTick = 0,
    fuelCapacity = 0,
    fuelAmmount = 0,
    fuelReactivity = 0,
    totalReactant = 0,
    wasteAmmount = 0,
    fuelTempereature = 0,
    controlRods = {}, 
    stackTemperature = 0,
    reactorId = ""
}

-- Base class method new

function ReactorUpdate:new()
    local o = {}
    setmetatable(o,self)
    self.__index = self
    self.timestamp = os.time("utc")
    self.active = false
    self.controlRodCount = 0
    self.casingTemperature = 0
    self.ambientTemperature = 0
    self.batteryCapacity = 0
    self.producedLastTick = 0
    self.energyStored = 0
    self.burnedFuelLastTick = 0
    self.fuelCapacity = 0
    self.fuelAmmount = 0
    self.fuelReactivity = 0
    self.totalReactant = 0
    self.wasteAmmount = 0
    self.fuelTempereature = 0
    self.controlRods = {}
    self.stackTemperature =  0
    self.reactorId = nil
end

