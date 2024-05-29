return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
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
      ensure_installed ={
        "lua-language-server",
        "html-lsp",
        "clangd",
        "marksman",
        "rust-analyzer",
        "emmet-language-server",
        "css-lsp",
        "typescript-language-server",
        "pyright",
        "prettier",
        "texlab",
        "stylua"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "javascript",
        "c", "cpp", "c_sharp",
        "java", "python", "latex",
        "php", "rust", "zig",
        "csv", "htmldjango", "xml",
        "typescript", "sql"
      },
    },
  },
}
