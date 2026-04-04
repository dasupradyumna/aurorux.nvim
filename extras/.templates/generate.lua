------------------------------------- AURORUX EXTRAS GENERATOR -------------------------------------

vim.opt.runtimepath:append '.'

---@param msg string
local function error(msg, ...) io.write(('\n\x1b[31m%s\x1b[0m\n'):format(msg:format(...))) end
---@param msg string
local function info(msg, ...) io.write(('%s\n'):format(msg:format(...))) end

---Split input string at dot characters
---@param str string
local function split_dot(str)
    return unpack(vim.split(str, '%.'))
end

local header_template = [[
#------------------------------------------ AURORUX THEME -----------------------------------------#
# Author: Dasu Pradyumna [dasupradyumna@gmail.com]
# License: MIT
# [https://github.com/dasupradyumna/aurorux.nvim/tree/main/%s]

]]
local palette = require 'aurorux.palette'

local extras_dir = './extras'
local templates_dir = vim.fs.joinpath(extras_dir, '.templates')

info('Searching for templates in %s', templates_dir)
for template_filename in vim.fs.dir(templates_dir) do
    if template_filename == 'generate.lua' then goto continue end

    -- Ensure tool theme folder exists
    local tool, ext = split_dot(template_filename)
    local folder = vim.fs.joinpath(extras_dir, tool)
    vim.fn.mkdir(folder, 'p')

    -- Ensure theme file is open and writable
    local filepath = ('%s/aurorux.%s'):format(folder, ext)
    local file, ferr = io.open(filepath, 'w+')
    if not file then
        error('%s could not be opened for writing!\n%s', filepath, ferr)
        goto exit
    end

    -- Ensure template file is open and readable
    local template_filepath = vim.fs.joinpath(templates_dir, template_filename)
    local template_file, terr = io.open(template_filepath, 'r')
    if not template_file then
        error('Template for %s could not be read.\n%s', tool, terr)
        goto exit
    end

    -- Write the header and contents with palette colors substituted
    file:write(header_template:format(filepath))
    local contents = template_file:read('*a'):gsub('%%{{ ([%w%.]+) }}%%', function (color)
        return vim.tbl_get(palette, split_dot(color))
    end)
    file:write(contents)

    -- Close all files
    template_file:close()
    file:close()

    info('- Updated theme file for %s', tool)
    ::continue::
end

::exit::
vim.cmd 'qall!'
