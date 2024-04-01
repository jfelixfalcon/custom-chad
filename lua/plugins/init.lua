return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "prettierd",
        "gopls",
        "pyright",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufWritePre" },
    config = function()
      require "configs.lint"
    end,
  },
  {
    "fatih/vim-go",
    ft = "go",
    config = function() end,

    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
}
