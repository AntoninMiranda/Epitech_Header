local framework = require('epitech_header.epitech_header.framework')
local conf = require('epitech_header.epitech_header.config')

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
end

function utils.create()
    if conf.config == nil then
        print("no config variable")
        do return end
    end
    -- filepath = "/home/nemo/test.c" -- to remove
    filepath = vim.api.nvim_buf_get_name(0)
    filename = framework.get_file_name(filepath)
    comment = framework.comments(filename)
    create_time = os.date("%d/%m/%Y %X")
    year = os.date("%Y")
    head = comment[1] .. "\n" .. comment[2] .. " Epitech Project, " .. year .. "\n" .. comment[2] .. " " .. filename .. "\n" .. comment[2] .. " File description:\n" .. comment[2] .. " Author: " .. conf.config.name[1] .. "\n" .. comment[2] .. " Create: " .. create_time .. "\n" .. comment[3] .. "\n\n"
    prepend_to_file(filepath, head)
end

return utils
