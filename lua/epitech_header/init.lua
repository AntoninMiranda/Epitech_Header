local utils = require("epitech_header.epitech_header.header")
local conf = require('epitech_header.epitech_header.config')

local M = {}

function M.setup(config)
    conf.name[1] = config.name[1]
end

M.header = utils.create

return M
