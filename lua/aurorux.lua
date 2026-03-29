------------------------------------------ AURORUX MODULE ------------------------------------------

local aurorux = {}

function aurorux.setup(opts)
    opts = opts or {}
    local highlights = require 'aurorux.highlights'
    if opts.transparent then
        ---@format disable-next
        local transparent_groups = { 'Normal', 'StatusLine', 'StatusLineNC',
            'WinBar', 'WinBarNC', 'TabLine', 'TabLineFill', 'TabLineSel' }
        for _, group in ipairs(transparent_groups) do
            highlights[1][group].bg = 'NONE'  -- XXX: Checking only built-in highlights
        end
    end
end

return aurorux
