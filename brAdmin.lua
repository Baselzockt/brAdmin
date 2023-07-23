local args = { ... }

if args[1] == "start" then
    if args [2] == "master" then
        shell.run("master/master", args[3])
    elseif args[2] == "slave" then
        shell.run("slave/slave", args[3])
    end
end