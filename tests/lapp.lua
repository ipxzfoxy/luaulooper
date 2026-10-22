local LuauLooper = require("../src/luaulooper")

local loop = LuauLooper:create()

loop:on("ready", function (message)
    print("I'm ready! message: ", message)
end)

loop:run()
loop:emit("ready", {"Hi there!"})