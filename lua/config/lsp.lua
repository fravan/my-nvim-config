vim.lsp.enable({
	"gopls",
	"html",
	"jsonls",
	"lua_ls",
	"templ",
	"tailwindcss",
})

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
		key("<leader>a", vim.lsp.buf.code_action, "Show code action")
		key("gca", vim.lsp.buf.code_action, "Show code action")
		key("<C-h>", vim.lsp.buf.signature_help, "Signature help", "i")
		key("<leader>vd", vim.diagnostic.open_float, "Open floating diagnostic")
		key("[d", function()
			vim.diagnostic.jump({ count = 1 })
		end, "Next diagnostic")
		key("]d", function()
			vim.diagnostic.jump({ count = -1 })
		end, "Previous diagnostic")
	end,
})
