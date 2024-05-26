local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts ={
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
        "dartls",
        "prettier",
        "texlab",
        "stylua"
      },
    },
  },
}
return plugins
