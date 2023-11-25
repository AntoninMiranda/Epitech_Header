local utils = require("epitech_header.epitech_header.header")
local conf = require("epitech_header.epitech_header.config")

local M = {}

function M.setup(config)
    conf.config = config
end

M.header = utils.create

return M
