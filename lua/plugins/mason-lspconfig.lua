return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "gopls",
      "html",
      "jsonls",
      "pyright",
      "tailwindcss",
      "templ",
      "vtsls",
      "yamlls",
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
