local config = require('epitech_header.epitech_header.config')
local framework = require('epitech_header.epitech_header.framework')

local utils = {}

function prepend_to_file(filename, content)
    local file = io.open(filename, "r+")

    if file then
        local current_content = file:read("*a")
        file:seek("set", 0)
        file:write(content .. current_content)
        file:close()
        print("La chaîne a été ajoutée au début du fichier.")
    else
        print("Erreur : Impossible d'ouvrir le fichier.")
    end
    vim.cmd(":checktime")
end

function utils.create()
    -- filepath = "/home/nemo/test.c" -- to remove
    filepath = vim.api.nvim_buf_get_name(0)
    vim.api.nvim_out_write(filepath)
    filename = framework.get_file_name(filepath)
    comment = framework.comments(filename)
    create_time = os.date("%d/%m/%Y %X")
    year = os.date("%Y")
    head = comment[1] .. "\n" .. comment[2] .. " Epitech Project, " .. year .. "\n" .. comment[2] .. " " .. filename .. "\n" .. comment[2] .. " File description:\n" .. comment[2] .. " Author: " .. config.name[1] .. "\n" .. comment[2] .. " Create: " .. create_time .. "\n" .. comment[3] .. "\n\n"
    prepend_to_file(filename, head)
end
return utils
