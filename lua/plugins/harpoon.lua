return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			settings = {
				save_on_toggle = true,
				sync_on_ui_close = true,
			},
		})

		vim.keymap.set("n", "<C-a>", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-1>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-2>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-3>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-4>", function()
			harpoon:list():select(4)
		end)

		vim.keymap.set("n", "<TAB>", function()
			harpoon:list():next({ ui_nav_wrap = true })
		end)
		vim.keymap.set("n", "<S-TAB>", function()
			harpoon:list():prev({ ui_nav_wrap = true })
		end)
	end,
}
