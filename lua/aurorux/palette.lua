---------------------------------------- THEME COLOR PALETTE ---------------------------------------

---@alias Color string RGB hex value

---@class ColorPair
---@field dark Color Dark variant
---@field light Color Light variant

---@class ColorPalette
---@field normal ColorPair Normal highlight
---@field gray1 ColorPair Dark gray highlight
---@field gray2 ColorPair Medium gray highlight
---@field gray3 ColorPair Light gray highlight
---@field red { bg: Color, fg: ColorPair } Red highlight
---@field green { bg: Color, fg: ColorPair } Green highlight
---@field blue { fg: ColorPair } Blue highlight
---@field cyan { bg: Color, fg: ColorPair } Cyan highlight
---@field magenta { fg: ColorPair } Magenta highlight
---@field yellow { bg: ColorPair, fg: ColorPair } Yellow highlight
---@field orange { bg: Color, fg: ColorPair } Orange highlight

---@type ColorPalette
return {
    ----------------------------- GRAY HIGHLIGHTS -----------------------------
    --- Hex range : 0 - f (15) & 4 segments [0-3] [4-7] [8-b] [c-f]
    --- Maintain this difference between RGB channels for green-toned gray colors
    ---     0 1 2 3 4 5 6 7 8 9 a b c d e f
    ---     ( 130 ) ( 260 ) ( 390 ) ( 4c0 )

    normal  = { dark = '#191b18', light = '#ccd4c8' },  -- dark (1.5) light (12.5)
    gray1   = { dark = '#212320', light = '#626660' },  -- dark (2) light (6)
    gray2   = { dark = '#313330', light = '#939990' },  -- dark (3) light (9)
    gray3   = { dark = '#414340', light = '#b3b9b0' },  -- dark (4) light (11)

    ------------------------------ RGB HIGHLIGHTS -----------------------------

    red     = { bg = '#32100d', fg = { dark = '#bb4a4f', light = '#f0626a' } },
    green   = { bg = '#082a03', fg = { dark = '#63a77a', light = '#96b68f' } },
    blue    = { fg = { dark = '#4f9dbc', light = '#78b0c4' } },

    ------------------------------ CMY HIGHLIGHTS -----------------------------

    cyan    = { bg = '#043430', fg = { dark = '#67afa6', light = '#9cbdb8' } },
    magenta = { fg = { dark = '#b363a9', light = '#c59bc1' } },
    yellow  = {
        bg = { dark = '#2a2200', light = '#3a2e00' },
        fg = { dark = '#a9b670', light = '#c4c780' },
    },

    orange  = { bg = '#503408', fg = { dark = '#d47452', light = '#dbaa70' } },
}
