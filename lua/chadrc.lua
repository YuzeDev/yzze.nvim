local M = {}

M.ui = { 
  theme = "doomchad",
  statusline = {
    theme = "vscode_colored",
    separator_style = "default"
  },
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" }
  },
  lsp = {
    signature = false,
  }
}

return M
