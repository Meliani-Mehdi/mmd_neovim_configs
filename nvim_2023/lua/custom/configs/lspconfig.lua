local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "clangd",
  "marksman",
  "cssls",
  "pyright",
  "emmet_language_server",
  "html",
  "rust_analyzer",
  "tsserver",
  "jdtls",
  "texlab",
  "dartls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
