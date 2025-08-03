-- Use "e" inside the ref window to navigate to ref and close buffer
vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		local bufnr = vim.fn.bufnr("%")
		vim.keymap.set("n", "e", function()
			vim.api.nvim_command([[execute "normal! \<cr>"]])
			vim.api.nvim_command(bufnr .. "bd")
		end, { buffer = bufnr, desc = "Navigate to ref and close buffer" })
	end,
	pattern = "qf",
})
