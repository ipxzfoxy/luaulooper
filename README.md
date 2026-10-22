# LuauLooper

A functional event loop built with **Luau 0.711**, inspired by **LuaLooper**.

## Usage

```luau
const LuauLooper = require("lualooper")

const loop = LuauLooper:create()


-- Register a listener
loop:on("ready", function(message)
    print("I'm ready! Message: " .. message)
end)

loop:run()
-- Emit the "ready" event
loop:emit("ready", {"Hi there!"})
```
