return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        ---@type lspconfig.options
        bashls = {
          filetypes = { "sh", "zsh" },
        },

      },
      ruff_lsp = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function() end,
        },
      },
    },
  },
}
