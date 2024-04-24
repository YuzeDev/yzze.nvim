local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier
    },
    svelte = {
      require("formatter.filetypes.svelte").prettier
    },
    rust = {
      require("formatter.filetypes.rust").rustfmt
    },
    cpp = {
      require("formatter.filetypes.cpp").clangformat
    },
    python = {
      require("formatter.filetypes.python").black
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
