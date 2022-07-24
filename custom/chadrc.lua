local M = {}

M.ui = {
  theme = "tokyonight",
}

M.mappings = require("custom.mappings")

M.plugins = {
  user = require("custom.plugins"),
}

return M
