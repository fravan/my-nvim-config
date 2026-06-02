return {
  "stevearc/conform.nvim",
  opts = {},
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        css = { "biome" },
        html = { "biome" },
        go = { "gofumpt" },
        json = { "biome" },
        lua = { "stylua" },
        markdown = { "prettier" },
        javascript = { "biome" },
        javascriptreact = { "biome" },
        sql = { "sqruff" },
        templ = { "templ" },
        typescript = { "biome" },
        typescriptreact = { "biome" },
        yaml = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      conform.format({
        lsp_format = "fallback",
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
