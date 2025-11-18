return {
  -- Disable Neo-tree
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- Disable Snacks' explorer (LazyVim may use this for the sidebar)

  -- Add Oil as the default file explorer with extras
  {
    "stevearc/oil.nvim",
    opts = {
      default_file_explorer = true,
      delete_to_trash = true,
      columns = { "icon", "permissions", "size" },
      view_options = { show_hidden = true },
      float = { padding = 2 },
      keymaps = {
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["q"] = "actions.close",
      },
    },
    keys = {
      { "<leader>e", "<cmd>Oil<CR>", desc = "File Explorer (Oil)" },
      { "-", "<cmd>Oil<CR>", desc = "Parent Directory (Oil)" },
      { "<leader>E", "<cmd>Oil --float<CR>", desc = "File Explorer Float (Oil)" },
    },
  },

  { "akinsho/bufferline.nvim", enabled = false },
  { "folke/snacks.nvim", opts = { explorer = { enabled = false } } },
}
