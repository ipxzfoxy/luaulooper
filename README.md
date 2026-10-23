# LuauLooper

A functional event loop built with **[Luau](https://github.com/luau-lang/luau) 0.711**, inspired by **[LuaLooper](https://github.com/ipxzfoxy/lualooper)**.

## Usage

```luau
const LuauLooper = require("lualooper")

const loop = LuauLooper:create()

-- Register a listener
loop:on("ready", function(message)
    print("I'm ready! Message: " .. message)
end)

-- Emit the "ready" event
loop:emit("ready", {"Hi there!"})

-- Start the event loop
loop:run()