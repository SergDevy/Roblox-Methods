local methods = {}

-- Wait function. Waits a certain amount of seconds then does things
function methods.wait(number)
    local currentTime = os.time() -- The time when the function was called

    while true do
        if math.floor(os.time() - currentTime) >= number then
            -- The time between os.time() and the time the function was called equals the number
            -- Break so that the user can do whatever is after the wait()
            break
        end
    end
end

-- Tick function, returns os.time(). Thats is.
function methods.tick()
    return os.time()
end

-- Assert function, returns an error message if the value passed is false or nil
function methods.assert(value, message)
    if value == false or value == nil then
        -- Send an error message
        error(message, 1)
    end
end

function methods.delay(number, func)
    methods.wait(number)

    func()
end

return methods
