"--------------------------------------- AURORUX COLORSCHEME --------------------------------------"

" Skip if colorscheme is already active
if g:->get('colors_name', '') == 'aurorux' | finish | endif

" Clear existing syntax and highlights
syntax reset
highlight clear

" Check and notify user that 24-bit colors are required
if !&termguicolors
    lua << trim END
        vim.notify_once(
            '[aurorux.nvim] Theme requires 24-bit RGB color support with `termguicolors` enabled',
            vim.log.levels.WARN
        )
    END
    set termguicolors
endif

" Apply the theme highlight groups
for group in v:lua.require('aurorux.highlights')
    for [name, spec] in group->items()
        call nvim_set_hl(0, name, spec)
    endfor
endfor

" Set colorscheme variable only if successful
let g:colors_name = 'aurorux'
