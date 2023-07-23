package.path = ";../protocol/?.lua;../util/?.lua;" .. package.path
require("ReactorUpdate")
require("registration")
require("reactor")
require("rednet")
local pretty = require "cc.pretty"
local args = { ... }
MASTER_ID = args[1]

if MASTER_ID == nil then
    printError("Please provide an masterId")
    return
 end

 OPEN_REDNET()

 rednet.host("brAdmin.master." .. MASTER_ID, MASTER_ID)

 local listenForRegistration = function ()
    while true do
        REGISTRATION = { rednet.receive("brAdmin." .. MASTER_ID .. ".registration") }
        print("Received registration")
        pretty.pretty_print(REGISTRATION[2])
    end
 end

 parallel.waitForAll(listenForRegistration)