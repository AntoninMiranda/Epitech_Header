local framework = require('framework')

function create(config)
    if config == nil then
        print("no config variable")
        do return end
    end
    filepath = "/home/lol.c"
    -- if exist(filepath) == true then
    --     print("Header already here")
    --     do return end
    -- end
    filename = framework.get_file_name(filepath)
    comment = framework.comments(filename)
    year = os.date("%Y")
    head = comment[1] .. "\n" .. comment[2] .. " Epitech Project, " .. year .. "\n" .. comment[2] .. " " .. filename .. "\n" .. comment[2] .. " File description:\n" .. comment[2] .. " Author: " .. config.name[1] .. "\n" .. comment[3]
    print(head)
end

