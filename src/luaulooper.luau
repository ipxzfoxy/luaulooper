const LuauLooper = {};

-- Types
type listenerCallback = (...any) -> ...any;
type listener = {
    name: string;
    listener: listenerCallback;
}

const EventLoop = {
    running = false;
    listeners = {};
}

type EventLoop = {
    running: boolean;
    listeners: {listener};
}

function LuauLooper:create(): EventLoop
    return table.clone(EventLoop);
end

function EventLoop:run()
    self.running=true;
end

function EventLoop:emit(eventname:string, args: {any})
    if not self.running then return end
    for _, t in ipairs(self.listeners) do
        if t.name ~= eventname then continue end;
        
        t.listener(table.unpack(args))       
    end
end

function EventLoop:on(n:string, l: listenerCallback)
    table.insert(self.listeners, {
        name=n;
        listener=l;
    });
end

return LuauLooper;