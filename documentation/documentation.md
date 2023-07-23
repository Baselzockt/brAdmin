active()
    returns boolean 
ambientTemperature()
    returns ambient temperature, seems like in kelvin
apiVersion()
    returns version as string
battery()
    returns battery object
casingTemperature()
    returns the casing temperature in kelvin as float
connected()
    returns boolean 
controlRodCount()
    returns ammount of controll rods as int
coolantTank()
    returns an object or nil if no coolant tank is "installed"
fuelTank()
    returns fuelTank object
fuelTemperature()
    returns fuelTemperature in kelvin as float
getControlRod(int index)
    returns controlRod object with the specified index (0 indexed)
setActive(boolean active)
    turns the reactor on or of
    returns nil
setAllControlRodLevels(int level)
    sets the level for all control rods
    returns nil
stackTemperatre()
    returns the stack temperature in kelvin as float