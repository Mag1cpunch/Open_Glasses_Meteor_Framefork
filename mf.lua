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

for x = xs - r, xs + r do
  for y = ys - r, ys + r do
    for z = zs - r, zs + r do
      if check(x, y, z, r) and not check(x, y, z, r - 1) then
        local c = g.addCube3D()
        c.set3DPos(x, y, z)
        c.setScale(tonumber(args[5]))
        c.setAlpha(0.4)
      end
      os.sleep(0)
    end
  end
end
