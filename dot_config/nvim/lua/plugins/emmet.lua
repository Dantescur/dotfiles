return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_language_server = {

          filetypes = {
            "edge",
            "css",
            "php",
            "eruby",
            "html",
            "htmldjango",
            "javascriptreact",
            "less",
            "pug",
            "sass",
            "scss",
            "typescriptreact",
            "vue",
          },
        },
      },
    },
  },
}
