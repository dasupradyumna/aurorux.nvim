------------------------------------- GITSIGNS.NVIM HIGHLIGHTS -------------------------------------
--- :help gitsigns-highlight-groups

local p = require 'aurorux.palette'
local util = require 'aurorux.util'

local function darken(color) return util.blend(color, 0.4, p.normal.dark) end
local function lighten(color) return util.blend(color, 0.1, p.normal.light) end

return {
    GitSignsCurrentLineBlame = { fg = p.gray1.light },

    ----------------------------- UNSTAGED CHANGES ----------------------------

    GitSignsAdd = { fg = lighten(p.green.fg.dark) },
    GitSignsChange = { fg = lighten(p.orange.fg.dark) },
    GitSignsDelete = { fg = lighten(p.red.fg.dark) },
    GitSignsChangedelete = { link = 'GitSignsChange' },
    GitSignsTopdelete = { link = 'GitSignsDelete' },
    GitSignsUntracked = { fg = lighten(p.blue.fg.dark) },

    GitSignsAddNr = { link = 'GitSignsAdd' },
    GitSignsChangeNr = { link = 'GitSignsChange' },
    GitSignsDeleteNr = { link = 'GitSignsDelete' },
    GitSignsChangedeleteNr = { link = 'GitSignsChangedelete' },
    GitSignsTopdeleteNr = { link = 'GitSignsTopdelete' },
    GitSignsUntrackedNr = { link = 'GitSignsUntracked' },

    GitSignsAddLn = { link = 'GitSignsAdd' },
    GitSignsChangeLn = { link = 'GitSignsChange' },
    GitSignsDeleteLn = { link = 'GitSignsDelete' },
    GitSignsChangedeleteLn = { link = 'GitSignsChangedelete' },
    GitSignsTopdeleteLn = { link = 'GitSignsTopdelete' },
    GitSignsUntrackedLn = { link = 'GitSignsUntracked' },

    GitSignsAddCul = { link = 'GitSignsAdd' },
    GitSignsChangeCul = { link = 'GitSignsChange' },
    GitSignsDeleteCul = { link = 'GitSignsDelete' },
    GitSignsChangedeleteCul = { link = 'GitSignsChangedelete' },
    GitSignsTopdeleteCul = { link = 'GitSignsTopdelete' },
    GitSignsUntrackedCul = { link = 'GitSignsUntracked' },

    ------------------------------ STAGED CHANGES -----------------------------

    GitSignsStagedAdd = { fg = darken(p.green.fg.dark) },
    GitSignsStagedChange = { fg = darken(p.orange.fg.dark) },
    GitSignsStagedDelete = { fg = darken(p.red.fg.dark) },
    GitSignsStagedChangedelete = { link = 'GitSignsStagedChange' },
    GitSignsStagedTopdelete = { link = 'GitSignsStagedDelete' },
    GitSignsStagedUntracked = { fg = darken(p.blue.fg.dark) },

    GitSignsStagedAddNr = { link = 'GitSignsStagedAdd' },
    GitSignsStagedChangeNr = { link = 'GitSignsStagedChange' },
    GitSignsStagedDeleteNr = { link = 'GitSignsStagedDelete' },
    GitSignsStagedChangedeleteNr = { link = 'GitSignsStagedChangedelete' },
    GitSignsStagedTopdeleteNr = { link = 'GitSignsStagedTopdelete' },
    GitSignsStagedUntrackedNr = { link = 'GitSignsStagedUntracked' },

    GitSignsStagedAddLn = { link = 'GitSignsStagedAdd' },
    GitSignsStagedChangeLn = { link = 'GitSignsStagedChange' },
    GitSignsStagedDeleteLn = { link = 'GitSignsStagedDelete' },
    GitSignsStagedChangedeleteLn = { link = 'GitSignsStagedChangedelete' },
    GitSignsStagedTopdeleteLn = { link = 'GitSignsStagedTopdelete' },
    GitSignsStagedUntrackedLn = { link = 'GitSignsStagedUntracked' },

    GitSignsStagedAddCul = { link = 'GitSignsStagedAdd' },
    GitSignsStagedChangeCul = { link = 'GitSignsStagedChange' },
    GitSignsStagedDeleteCul = { link = 'GitSignsStagedDelete' },
    GitSignsStagedChangedeleteCul = { link = 'GitSignsStagedChangedelete' },
    GitSignsStagedTopdeleteCul = { link = 'GitSignsStagedTopdelete' },
    GitSignsStagedUntrackedCul = { link = 'GitSignsStagedUntracked' },

    ----------------------------- PREVIEW CHANGES -----------------------------

    GitSignsAddPreview = { link = 'Added' },
    GitSignsDeletePreview = { link = 'Removed' },
    GitSignsNoEOLPreview = { link = 'GitSignsUntracked' },

    GitSignsAddInline = { link = 'DiffAdd' },
    GitSignsChangeInline = { link = 'DiffText' },
    GitSignsDeleteInline = { link = 'DiffDelete' },

    GitSignsAddLnInline = { link = 'DiffAdd' },
    GitSignsChangeLnInline = { link = 'DiffText' },
    GitSignsDeleteLnInline = { link = 'DiffDelete' },

    GitSignsDeleteVirtLn = { link = 'DiffDelete' },
    GitSignsDeleteVirtLnInLine = { link = 'DiffDelete' },
    GitSignsVirtLnum = { link = 'DiffDelete' },
}
