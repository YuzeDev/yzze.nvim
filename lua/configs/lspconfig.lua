local merge_tb = vim.tbl_deep_extend

local config = require("nvchad.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"

local servers = {
  "tailwindcss",
  "eslint",
  "tsserver",
  "rust_analyzer",
  "clangd"
}

for _, lsp in ipairs(servers) do
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  local exists, settings = pcall(require, "lsp." .. lsp)

  if exists then
    opts = merge_tb("force", settings, opts)
  end

  lspconfig[lsp].setup(opts)
end
