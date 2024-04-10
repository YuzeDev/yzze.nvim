return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "typescript-language-server",
      "tailwindcss-language-server",
      "eslint-lsp",
      "lua-language-server",
      "html-lsp",
      "prettier",

      -- Lua
      "stylua",

      -- cpp/c/rust/go
      "rust-analyzer",
      "clangd",
      "clang-format",
      "gopls",
      "codelldb",
    }
  }
}
