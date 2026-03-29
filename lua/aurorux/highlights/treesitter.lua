-------------------------------------- TREE-SITTER HIGHLIGHTS --------------------------------------
--- :help treesitter-highlight-groups

local p = require 'aurorux.palette'

return {
    ['@variable']                    = { link = 'Identifier' },
    ['@variable.builtin']            = { link = 'Keyword' },
    ['@variable.parameter']          = { fg = p.blue.fg.dark },
    ['@variable.parameter.builtin']  = { link = 'Keyword' },
    ['@variable.member']             = { link = '@property' },

    ['@constant']                    = { link = 'Constant' },
    ['@constant.builtin']            = { link = 'Constant' },
    ['@constant.macro']              = { link = 'PreProc' },

    ['@module']                      = { link = 'Constant' },
    ['@module.builtin']              = { link = '@module' },
    ['@label']                       = { link = 'Operator' },

    ['@string']                      = { link = 'String' },
    ['@string.documentation']        = { link = 'Comment' },
    ['@string.regexp']               = { link = 'PreProc' },
    ['@string.escape']               = { link = 'Keyword' },
    ['@string.special']              = { link = 'String' },
    -- ['@string.special.symbol'] = {}, -- XXX: where??
    -- ['@string.special.path'] = {},
    ['@string.special.url']          = { link = '@markup.link' },

    ['@character']                   = { link = 'Character' },
    ['@character.special']           = { link = 'Keyword' },

    ['@boolean']                     = { link = 'Boolean' },
    ['@number']                      = { link = 'Number' },
    ['@number.float']                = { link = 'Float' },

    ['@type']                        = { link = 'Type' },
    ['@type.builtin']                = { link = 'Keyword' },
    ['@type.definition']             = { link = 'Type' },
    ['@type.qualifier']              = { link = 'Operator' },  -- NOTE: Not in neovim documentation

    ['@attribute']                   = { link = 'Keyword' },
    ['@attribute.builtin']           = { link = 'Keyword' },
    ['@property']                    = { fg = p.green.fg.dark },

    ['@function']                    = { link = 'Function' },
    ['@function.builtin']            = { link = 'Function' },
    ['@function.call']               = { link = 'Function' },
    ['@function.macro']              = { link = 'PreProc' },
    ['@function.method']             = { link = 'Function' },
    ['@function.method.call']        = { link = 'Function' },

    ['@constructor']                 = { link = 'Type' },
    ['@operator']                    = { link = 'Operator' },

    ['@keyword']                     = { link = 'Keyword' },
    ['@keyword.coroutine']           = { link = 'Operator' },
    ['@keyword.function']            = { link = 'Keyword' },
    ['@keyword.operator']            = { link = 'Operator' },
    ['@keyword.import']              = { link = 'Keyword' },
    ['@keyword.type']                = { link = 'Keyword' },
    ['@keyword.modifier']            = { link = 'Operator' },
    ['@keyword.repeat']              = { link = 'Keyword' },
    ['@keyword.return']              = { link = 'Keyword' },
    ['@keyword.debug']               = { link = 'Operator' },
    ['@keyword.exception']           = { link = 'Keyword' },
    ['@keyword.conditional']         = { link = 'Keyword' },
    ['@keyword.conditional.ternary'] = { link = 'Operator' },
    ['@keyword.directive']           = { link = 'PreProc' },
    ['@keyword.directive.define']    = { link = 'Keyword' },

    ['@punctuation.delimiter']       = { link = 'Delimiter' },
    ['@punctuation.bracket']         = { link = 'Delimiter' },
    ['@punctuation.special']         = { link = 'Operator' },

    ['@comment']                     = { link = 'Comment' },
    ['@comment.documentation']       = { link = 'Comment' },
    ['@comment.error']               = { link = 'DiagnosticError' },
    ['@comment.warning']             = { link = 'DiagnosticWarn' },
    ['@comment.todo']                = { link = 'DiagnosticHint' },
    ['@comment.note']                = { link = 'DiagnosticInfo' },

    ['@markup.strong']               = { bold = true },
    ['@markup.italic']               = { italic = true },
    ['@markup.strikethrough']        = { strikethrough = true },
    ['@markup.underline']            = { underline = true },

    ['@markup.heading']              = { link = 'Title' },
    ['@markup.heading.1']            = { link = 'Title' },
    ['@markup.heading.2']            = { link = 'Title' },
    ['@markup.heading.3']            = { link = 'Title' },
    ['@markup.heading.4']            = { link = 'Title' },
    ['@markup.heading.5']            = { link = 'Title' },
    ['@markup.heading.6']            = { link = 'Title' },

    ['@markup.quote']                = { link = 'Comment' },
    ['@markup.math']                 = { link = '@property' },
    ['@markup.environment']          = { link = 'Type' },  -- NOTE: not in docs

    ['@markup.link']                 = { underline = true, fg = p.magenta.fg.light },
    ['@markup.link.label']           = { link = '@markup.link' },
    ['@markup.link.url']             = { link = '@markup.link' },

    ['@markup.raw']                  = { fg = p.red.fg.light, bg = p.gray1.dark },
    ['@markup.raw.block']            = { link = 'Comment' },
    ['@markup.raw.delimiter']        = { link = 'Delimiter' },

    ['@markup.list']                 = { link = '@variable.parameter' },
    ['@markup.list.checked']         = { fg = p.green.fg.light },
    ['@markup.list.unchecked']       = { fg = p.red.fg.light },

    ['@diff.plus']                   = { link = 'DiffAdd' },
    ['@diff.minus']                  = { link = 'DiffDelete' },
    ['@diff.delta']                  = { link = 'DiffChange' },

    ['@tag']                         = { link = '@variable.parameter' },
    ['@tag.builtin']                 = { link = '@tag' },
    ['@tag.attribute']               = { link = '@property' },
    ['@tag.delimiter']               = { link = 'Operator' },

    ['@spell']                       = {},
    ['@nospell']                     = {},
}
