local M = {}

M.telescope = {
  n = {
    ["<leader><leader>"] = { "<cmd> Telescope<CR>", "open telescope" },
    ["<leader><leader>o"] = { "<cmd> Telescope oldfiles<CR>", "open telescope oldfiles" },
    ["\\\\"] = { "<cmd>lua require('fzf-lua').files() <CR>", "fzf lua git files" },
    ["\\f"] = { "<cmd> Telescope live_grep<CR>", "open telescope live grep" },
  },
}

M.shortcuts = {
  n = {
    ["<leader>m"] = { "<cmd> :e ~/.config/nvim/lua/custom/mappings.lua <CR>", "edit mappings" },
    ["<leader>v"] = { "<cmd> :e ~/.config/nvim/lua/custom/chadrc.lua <CR>", "edit nvim mappings" },
    ["<leader>p"] = { "<cmd> :e ~/.config/nvim/lua/custom/plugins/init.lua <CR>", "edit nvim plugins" },
    ["<leader>cm"] = { "<cmd> :vsplit %<.module.css <CR>", "open corresponding css module" },
  },
}

return M
