return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>ff", ":FzfLua files<CR>", desc = "Browse files per name" },
		{ "<leader>fg", ":FzfLua grep<CR>", desc = "Browse files per content" },
		{ "<leader>fb", ":FzfLua buffers<CR>", desc = "Browse files in buffer" },
	},
	opts = {},
}
