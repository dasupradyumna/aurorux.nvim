------------------------------------ LANGUAGE SERVER HIGHLIGHTS ------------------------------------
--- :help lsp-highlight
--- :help lsp-semantic-highlight

local p = require 'aurorux.palette'

return {
    LspReferenceText            = { link = 'Visual' },
    LspReferenceRead            = { link = 'LspReferenceText' },
    LspReferenceWrite           = { link = 'LspReferenceText' },
    LspReferenceTarget          = { link = 'LspReferenceText' },
    LspInlayHint                = { fg = p.gray1.light },
    LspCodeLens                 = { link = 'LspInlayHint' },
    LspCodeLensSeparator        = { link = 'LspInlayHint' },
    LspSignatureActiveParameter = { link = 'Visual' },

    ['@lsp.type.class']         = { link = 'Type' },
    ['@lsp.type.comment']       = { link = 'Comment' },
    ['@lsp.type.decorator']     = { link = 'Operator' },
    ['@lsp.type.enum']          = { link = 'Type' },
    ['@lsp.type.enumMember']    = { link = '@property' },
    ['@lsp.type.event']         = { link = 'Type' },
    ['@lsp.type.function']      = { link = 'Function' },
    ['@lsp.type.interface']     = { link = 'Type' },
    ['@lsp.type.keyword']       = { link = 'Keyword' },
    ['@lsp.type.macro']         = { link = 'PreProc' },
    ['@lsp.type.method']        = { link = 'Function' },
    ['@lsp.type.modifier']      = { link = 'Operator' },
    ['@lsp.type.namespace']     = { link = '@module' },
    ['@lsp.type.number']        = { link = 'Constant' },
    ['@lsp.type.operator']      = { link = 'Operator' },
    ['@lsp.type.parameter']     = { link = '@variable.parameter' },
    ['@lsp.type.property']      = { link = '@property' },
    ['@lsp.type.regexp']        = { link = 'PreProc' },
    ['@lsp.type.string']        = { link = 'String' },
    ['@lsp.type.struct']        = { link = 'Type' },
    ['@lsp.type.type']          = { link = 'Type' },
    ['@lsp.type.typeParameter'] = { link = 'Type' },
    ['@lsp.type.variable']      = { link = 'Identifier' },

    ['@lsp.mod.abstract']       = {},
    ['@lsp.mod.async']          = {},
    ['@lsp.mod.declaration']    = {},
    ['@lsp.mod.defaultLibrary'] = {},
    ['@lsp.mod.definition']     = {},
    ['@lsp.mod.deprecated']     = { strikethrough = true },
    ['@lsp.mod.documentation']  = {},
    ['@lsp.mod.modification']   = {},
    ['@lsp.mod.readonly']       = {},
    ['@lsp.mod.static']         = {},

}
