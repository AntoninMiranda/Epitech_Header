local utils = require("epitech_header.epitech_header.header")

local M = {}

function M.setup(config)
    vim.g.hedaer_authors = config.name[1]
end

M.header = utils.create

return M
