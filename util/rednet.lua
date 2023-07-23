function OPEN_REDNET()
    if  rednet.isOpen() == false then
        print("opening rednet")
        local modems = { peripheral.find("modem", rednet.close) }
        rednet.open(peripheral.getName(modems[1]))
        print("opened rednet")
     end
end