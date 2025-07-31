return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  version = false,
  build = ":TSUpdate",
  opts = {
    highlight = {
      enable = true,
    },
    indent = { enable = true },

    ensure_installed = {
      "bash",
      "dockerfile",
      "gitignore",
      "go",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "templ",
      "typescript",
      "vim",
      "yaml",
    },
    -- lorse de l'appui sur <Ctrl-space> sélectionne le bloc
    -- courant spécifique au langage de programmation
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
    -- Not working?
    -- textobjects = {
    --   move = {
    --     enable = true,
    --     goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
    --     goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
    --     goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
    --     goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
    --   },
    -- },
  },
}
