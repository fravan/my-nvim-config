-- This is used so lsp config files can require("lspconfig.util")
-- otherwise it fails and then everything breaks…
return {
	"neovim/nvim-lspconfig",
	dependencies = { "mason.nvim" },
	opts = function() end,
	config = function() end,
}
