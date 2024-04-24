return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "typescript-language-server",
      "tailwindcss-language-server",
      "svelte-langiage-server",
      "eslint-lsp",
      "html-lsp",
      "prettier",

      -- Lua
      "stylua",
      "lua-language-server",

      -- cpp/c/rust/go
      "rust-analyzer",
      "clangd",
      "clang-format",
      "gopls",
      "codelldb",

      -- R
      "r-languageserver",

      -- python
      "pyright",
      "black",
    }
  }
}
