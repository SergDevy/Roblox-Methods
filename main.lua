-- USED TO TEST THE METHODS
-- DELETE IF YOU DONT WANT THIS IN THE WAY

local methods = require("methods")

--methods.wait(5)

--print("5 seconds has passed")

print(methods.tick())

local valueToCheck = true
methods.assert(valueToCheck, "This value is false")

-- Countdown test
-- for i = 10, 0, -1 do
--     print(tostring(i))
--     methods.wait(1)
-- end

local function testFunc()
    print("This is a test of the delay function")
end

methods.delay(3, testFunc)