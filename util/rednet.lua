function OPEN_REDNET()
    if  rednet.isOpen() == false then
        print("opening rednet")
        peripheral.find("modem", rednet.open)
        print("opened rednet")
     end
end