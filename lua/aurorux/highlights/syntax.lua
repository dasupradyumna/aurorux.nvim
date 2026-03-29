----------------------------------------- SYNTAX HIGHLIGHTS ----------------------------------------
--- :help group-name

local p = require 'aurorux.palette'

return {
    Comment        = { fg = p.gray2.light },

    Constant       = { fg = p.blue.fg.light },
    String         = { fg = p.green.fg.light },
    Character      = { link = 'String' },
    Number         = { link = 'Constant' },
    Boolean        = { link = 'Constant' },
    Float          = { link = 'Constant' },

    Identifier     = { fg = p.cyan.fg.light },
    Function       = { fg = p.orange.fg.light },

    Statement      = { fg = p.magenta.fg.light },
    Conditional    = { link = 'Statement' },
    Repeat         = { link = 'Statement' },
    Label          = { link = 'Statement' },
    Operator       = { fg = p.red.fg.light },
    Keyword        = { link = 'Statement' },
    Exception      = { link = 'Statement' },

    PreProc        = { fg = p.orange.fg.dark },
    Include        = { link = 'Operator' },
    Define         = { link = 'Operator' },
    Macro          = { link = 'Operator' },
    PreCondit      = { link = 'Operator' },

    Type           = { fg = p.cyan.fg.dark },
    StorageClass   = { link = 'Operator' },
    Structure      = { link = 'Keyword' },
    Typedef        = { link = 'Type' },

    Special        = { link = 'PreProc' },
    SpecialChar    = { link = 'PreProc' },
    Tag            = { link = '@markup.link' },
    Delimiter      = { fg = p.normal.light },
    SpecialComment = { bold = true },
    Debug          = { link = 'Operator' },

    Underlined     = { link = '@markup.underline' },

    Ignore         = {},

    Error          = { link = 'DiagnosticError' },

    Todo           = { bold = true },

    Added          = { fg = p.green.fg.light },
    Changed        = { fg = p.yellow.fg.light },
    Removed        = { fg = p.red.fg.light },
}
