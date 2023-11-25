local utils = require("epitech_header.epitech_header.header")

local M = {}
local M.conf = {name = {"Not set"}}
function M.setup(config)
    M.conf = config
end

M.header = utils.create

return M
