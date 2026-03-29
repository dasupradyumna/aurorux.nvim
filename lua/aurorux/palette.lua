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

-- 1(statusline,inline-code) 2(curline,qfline) 3(winsep,folded,nontext,tablinesel)
-- palette.black   = { '#212320', '#313330', '#414340' }  -- 2 | 3 | 4
-- 1(conceal,lno,inlayhint) 2(statusline,comment) 3(modemsg)
-- palette.white   = { '#626660', '#939990', '#b3b9b0' }  -- 6 | 9 | 11
-- B(diffdelete) FD(spellbad,error) FL(operator,removed,inline-code,uncheckbox)
-- palette.red     = { '#32100d', '#bb4a4f', '#f0626a' }
-- B(diffadd) FD(property) FL(string,added,ok,checkbox)
-- palette.green   = { '#082a03', '#63a77a', '#96b68f' }
-- FD(spelllocal,hint,parameter) FL(dir,question,constant)
-- palette.blue    = { '#4f9dbc', '#78b0c4' }
-- B(visual) FD(title,type) FL(identifier,info)
-- palette.cyan    = { '#043430', '#67afa6', '#9cbdb8' }
-- FD(spellrare) FL(statement,link)
-- palette.magenta = { '#b363a9', '#c59bc1' }
-- BD(diffchange) BL(difftext) FD() FL(changed)
-- palette.yellow  = { '#2a2200', '#3a2e00', '#a9b670', '#c4c780' }
-- B(search) FD(spellcap,preproc,warn) FL(function)
-- palette.orange  = { '#503408', '#d47452', '#dbaa70' }
