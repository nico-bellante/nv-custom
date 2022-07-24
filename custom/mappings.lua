local M = {}

M.telescope = {
  n = {
    ["<leader><leader>"] = { "<cmd> Telescope<CR>", "open telescope" },
    ["<leader><leader>o"] = { "<cmd> Telescope oldfiles<CR>", "open telescop oldfiles" },
    ["\\\\"] = { "<cmd> Telescope find_files<CR>", "file finder" },
    ["\\f"] = { "<cmd> Telescope live_grep<CR>", "open telescope live grep" },
  },
}

M.shortcuts = {
  n = {
    ["<leader>m"] = { "<cmd> :e ~/.config/nvim/lua/custom/mappings.lua <CR>", "edit mappings" },
    ["<leader>v"] = { "<cmd> :e ~/.config/nvim/lua/custom/chadrc.lua <CR>", "edit nvim mappings" },
    ["<leader>p"] = { "<cmd> :e ~/.config/nvim/lua/custom/plugins/init.lua <CR>", "edit nvim plugins" },
  },
}

return M
