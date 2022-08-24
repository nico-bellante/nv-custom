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
    cmd = { "TSCaptureUnderCursor", "TSPlaygroundToggle" },
    config = function()
      require("nvim-treesitter.configs").setup({
        playground = {
          enable = true,
          disable = {},
          updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
          persist_queries = false, -- Whether the query persists across vim sessions
          keybindings = {
            toggle_query_editor = "o",
            toggle_hl_groups = "i",
            toggle_injected_languages = "t",
            toggle_anonymous_nodes = "a",
            toggle_language_display = "I",
            focus_language = "f",
            unfocus_language = "F",
            update = "R",
            goto_node = "<cr>",
            show_help = "?",
          },
        },
      })
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
      "GBrowse",
    },
  },
  ["junegunn/fzf"] = {
    run = "./install --bin",
  },
  ["ibhagwan/fzf-lua"] = {
    requires = { "kyazdani42/nvim-web-devicons" },
  },
  ["tpope/vim-rhubarb"] = {
    cmd = {
      "GBrowse",
    },
  },
}
