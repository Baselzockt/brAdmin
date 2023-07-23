package.path = ";../protocol/?.lua;../util/?.lua;" .. package.path
require("ReactorUpdate")
require("registration")
require("reactor")
require("rednet")
local args = { ... }
MASTER_ID = args[1]

if MASTER_ID == nil then
   printError("Please provide an masterId")
   return
end

---@type ReactorUpdate
REACTORS = { peripheral.find("BiggerReactors_Reactor")}
if next(REACTORS) == nil then
   printError("No reactor connected");
   return
end

print("got ".. REACTORS.getn() .. " reactors")

OPEN_REDNET()

print("connecting to master")
local computers = {}
while next(computers) == nil do
   sleep(5)
   computers = {rednet.lookup("brAdmin.master." .. MASTER_ID)}
end 

print("got master server")
MASTER = computers[1]
if MASTER == nil then
   printError("Master was nil")
   return
end

local registration = Registration:new()
registration.computerID =  os.computerID()

for i, r in ipairs(REACTORS) do
   local reactor = Reactor:new()
   reactor.reactorId = os.computerID() .. "." .. i
   reactor.maxRfPerTick = 1000 --todo: calculate max RF per tick
   reactor.controlRodCount = r.controlRodCount()
   reactor.batteryCapacity = r.battery().capacity()
   reactor.fuelCapacity = r.fuelTank().capacity()
   registration.reactors.insert(reactor)
end

rednet.send(MASTER, registration ,"brAdmin.".. MASTER_ID ..".registration")

---@type ReactorSettings
SETTINGS = { rednet.receive("brAdmin.".. MASTER_ID ..".settings") }

local listenForSettingsUpdates = function ()
   while true do
      SETTINGS = { rednet.receive("brAdmin.".. MASTER_ID ..".settings") }
      print("Received settings update")
   end
end

local sendUpdates = function ()
   while true do
      sleep(SETTINGS.updateRate)
      
   end
end

parallel.waitForAll(listenForSettingsUpdates, sendUpdates)