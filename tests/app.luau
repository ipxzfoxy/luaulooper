const LuaLooper = require("../src/luaulooper")

const loop = LuaLooper:create()

loop:on("ready", function (message)
    print("I'm ready! message: ", message)
end)

loop:run()
loop:emit("ready", {"Hi there!"})