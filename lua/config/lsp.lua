-- This is automatically done by mason-lspconfig.lua
-- vim.lsp.enable({
-- 	"lua_ls",
-- 	"gopls",
-- 	"html",
-- 	"jsonls",
-- 	"pyright",
-- 	"tailwindcss",
-- 	"templ",
-- 	"vtsls",
-- 	"yamlls",
-- })

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("my.lsp", {}),
  callback = function(e)
    local key = function(key, func, desc, mode)
      mode = mode or "n"
      vim.keymap.set(mode, key, func, { buffer = e.buf, desc = desc })
    end

    key("gd", vim.lsp.buf.definition, "Go to definition")
    key("gD", vim.lsp.buf.implementation, "Go to Implementation")
    key("gh", vim.lsp.buf.hover, "Hover signature")
    key("gr", vim.lsp.buf.references, "Show all references")
    key("gn", vim.lsp.buf.rename, "Rename using LSP")
    key("<C-.>", vim.lsp.buf.code_action, "Show code action")
    key("<C-h>", vim.lsp.buf.signature_help, "Signature help", "i")
    key("<leader>vd", vim.diagnostic.open_float, "Open floating diagnostic")
    key("[d", vim.diagnostic.goto_next, "Next diagnostic")
    key("]d", vim.diagnostic.goto_prev, "Previous diagnostic")
  end,
})
