return {
  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls")
    end,
  },
  ["nvim-telescope/telescope-fzf-native.nvim"] = { run = "make" },
  ["rcarriga/nvim-notify"] = {},
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require("custom.plugins.lspconfig")
    end,
  },
  ["tpope/vim-fugitive"] = {
    opt = true,
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gvdiffsplit",
      "Gedit",
      "Gsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "Glgrep",
      "Gmove",
      "Gdelete",
      "Gremove",
      "Gbrowse",
    },
  },
}
