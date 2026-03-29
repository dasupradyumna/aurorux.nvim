-------------------------------------- DIAGNOSTICS HIGHLIGHTS --------------------------------------
--- :help diagnostic-highlights

local p = require 'aurorux.palette'

return {
    DiagnosticError             = { fg = p.red.fg.dark },
    DiagnosticWarn              = { fg = p.orange.fg.dark },
    DiagnosticInfo              = { fg = p.cyan.fg.light },
    DiagnosticHint              = { fg = p.blue.fg.dark },
    DiagnosticOk                = { fg = p.green.fg.light },

    DiagnosticVirtualTextError  = { italic = true, fg = p.red.fg.dark },
    DiagnosticVirtualTextWarn   = { italic = true, fg = p.orange.fg.dark },
    DiagnosticVirtualTextInfo   = { italic = true, fg = p.cyan.fg.light },
    DiagnosticVirtualTextHint   = { italic = true, fg = p.blue.fg.dark },
    DiagnosticVirtualTextOk     = { italic = true, fg = p.green.fg.light },

    DiagnosticVirtualLinesError = { link = 'DiagnosticVirtualTextError' },
    DiagnosticVirtualLinesWarn  = { link = 'DiagnosticVirtualTextWarn' },
    DiagnosticVirtualLinesInfo  = { link = 'DiagnosticVirtualTextInfo' },
    DiagnosticVirtualLinesHint  = { link = 'DiagnosticVirtualTextHint' },
    DiagnosticVirtualLinesOk    = { link = 'DiagnosticVirtualTextOk' },

    DiagnosticUnderlineError    = { underdotted = true, sp = p.red.fg.dark },
    DiagnosticUnderlineWarn     = { underdotted = true, sp = p.orange.fg.light },
    DiagnosticUnderlineInfo     = { underdotted = true, sp = p.cyan.fg.light },
    DiagnosticUnderlineHint     = { underdotted = true, sp = p.blue.fg.dark },
    DiagnosticUnderlineOk       = { underdotted = true, sp = p.green.fg.light },

    DiagnosticFloatingError     = { link = 'DiagnosticError' },
    DiagnosticFloatingWarn      = { link = 'DiagnosticWarn' },
    DiagnosticFloatingInfo      = { link = 'DiagnosticInfo' },
    DiagnosticFloatingHint      = { link = 'DiagnosticHint' },
    DiagnosticFloatingOk        = { link = 'DiagnosticOk' },

    DiagnosticSignError         = { link = 'DiagnosticError' },
    DiagnosticSignWarn          = { link = 'DiagnosticWarn' },
    DiagnosticSignInfo          = { link = 'DiagnosticInfo' },
    DiagnosticSignHint          = { link = 'DiagnosticHint' },
    DiagnosticSignOk            = { link = 'DiagnosticOk' },

    DiagnosticDeprecated        = { strikethrough = true },
    DiagnosticUnnecessary       = { link = 'Comment' },

}
