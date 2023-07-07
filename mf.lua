local component = require("component")
local g = component.glasses
local args = {...}

local xs = tonumber(args[1])
local ys = tonumber(args[2])
local zs = tonumber(args[3])
local r = tonumber(args[4])

g.removeAll()

-- Define the check function
local function check(x, y, z, r)
  return ((x - xs) * (x - xs)) + ((y - ys) * (y - ys)) + ((z - zs) * (z - zs)) <= (r * r)
end

cube = component.glasses.addCube3D()
cube.addColor(50, 50, 50)
cube.addScale(2, 2, 2)
