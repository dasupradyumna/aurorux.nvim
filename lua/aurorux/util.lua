----------------------------------------- UTILITY FUNCITONS ----------------------------------------

local util = {}

---Convert hexadecimal representation into RGB color values
---@param color Color
---@return integer
---@return integer
---@return integer
local function hex2rgb(color)
    local color_i = tonumber(color:sub(2), 16)
    local r = bit.band(bit.rshift(color_i, 16), 0xFF)
    local g = bit.band(bit.rshift(color_i, 8), 0xFF)
    local b = bit.band(color_i, 0xFF)
    return r, g, b
end

---Convert RGB color values into hexadecimal representation
---@param r integer
---@param g integer
---@param b integer
---@return string
local function rgb2hex(r, g, b)
    return ('#%02X%02X%02X'):format(r, g, b)
end

---Compute linearly interpolated color from `a` to `b`, with `alpha` distance from `a`
---@param a integer
---@param b integer
---@param alpha number
---@return integer
local function lerp(a, b, alpha)
    return math.floor(a + (b - a) * alpha)
end

---Blend 2 colors using the given alpha
---@param c1 Color
---@param alpha number
---@param c2 Color
---@return Color
function util.blend(c1, alpha, c2)
    local r1, g1, b1 = hex2rgb(c1)
    local r2, g2, b2 = hex2rgb(c2)
    return rgb2hex(lerp(r1, r2, alpha), lerp(g1, g2, alpha), lerp(b1, b2, alpha))
end

return util
