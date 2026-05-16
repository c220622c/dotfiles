require("config.core")
require("config.bindings")
local config_path = vim.fn.stdpath("config") .. "/lua/plugins/"
local files = vim.fn.split(vim.fn.glob(config_path .. "*.lua"), "\n")

for _, file in ipairs(files) do
    -- Get the filename without path or extension
    local module = file:match("([^/]+)%.lua$")
    require("plugins." .. module)
end
