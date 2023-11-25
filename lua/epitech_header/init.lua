local utils = require("epitech_header.epitech_header.header")

local M = {}
local conf = {name = {"Not set"}}
function M.setup(config)
    conf = config
end

M.header = utils.create

return M
