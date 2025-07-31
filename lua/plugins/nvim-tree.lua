return {
  "nvim-tree/nvim-tree.lua",  
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function on_attach(bufnr)
      local api = require "nvim-tree.api"

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)
    
      vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))

      vim.keymap.set("n", "<C-c>", function()
        local global_cwd = vim.fn.getcwd(-1, -1)
        api.tree.change_root(global_cwd)
      end, opts("Change root to global CWD"))
    end

    require("nvim-tree").setup({
      on_attach = on_attach,
    })

    -- Use <leader>e to toggle tree
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle Tree Explorer" })
  end,
}

