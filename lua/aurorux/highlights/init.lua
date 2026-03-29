----------------------------------------- HIGHLIGHTS MODULE ----------------------------------------

return {
    require 'aurorux.highlights.builtin',
    require 'aurorux.highlights.syntax',
    require 'aurorux.highlights.diagnostics',
    require 'aurorux.highlights.treesitter',
    require 'aurorux.highlights.lsp',
    -- Filetype specific highlights
    require 'aurorux.highlights.filetype.lua',
    -- Plugin specific highlights
    require 'aurorux.highlights.plugin.gitsigns',
}
