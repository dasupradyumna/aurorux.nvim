----------------------------------------- UTILITY FUNCITONS ----------------------------------------

local util = {}

local function int2rgb(color)
    local r = bit.band(bit.rshift(color, 16), 0xFF)
    local g = bit.band(bit.rshift(color, 8), 0xFF)
    local b = bit.band(color, 0xFF)
    return r, g, b
end

local function rgb2int(r, g, b)
    return ('#%02X%02X%02X'):format(r, g, b)
end

local function lerp(a, b, alpha)
    return math.floor(a + (b - a) * alpha)
end

---Blend 2 colors using the given alpha
---@param c1 Color
---@param alpha number
---@param c2 Color
---@return Color
function util.blend(c1, alpha, c2)
    local r1, g1, b1 = int2rgb(tonumber(c1:sub(2), 16))
    local r2, g2, b2 = int2rgb(tonumber(c2:sub(2), 16))
    local r = lerp(r1, r2, alpha)
    local g = lerp(g1, g2, alpha)
    local b = lerp(b1, b2, alpha)
    return rgb2int(r, g, b)
end

return util
