return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  event = {
    "BufReadPre /mnt/d/obsidian/notes/**.md",
    "BufNewFile /mnt/d/obsidian/notes/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "/mnt/d/obsidian/notes",
      },
    },
    notes_subdir = "inbox",
    new_notes_location = "notes_subdir",
    picker = {
      name = "telescope.nvim",
    },
    completion = {
      nvim_cmp = false,
      blink = true,
      min_chars = 2,
    },

    mappings = {
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      ["<cr>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      },
    },
    ui = {
      enable = true,
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
      },
    },
  },
  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>",          desc = "New Note" },
    { "<leader>oo", "<cmd>ObsidianOpen<cr>",         desc = "Open in Obsidian" },
    { "<leader>of", "<cmd>ObsidianQuickSwitch<cr>",  desc = "Find Note" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>",       desc = "Search Notes" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>",    desc = "Backlinks" },
    { "<leader>ol", "<cmd>ObsidianLinks<cr>",        desc = "Links" },
    { "<leader>ot", "<cmd>ObsidianTags<cr>",         desc = "Tags" },
    { "<leader>od", "<cmd>ObsidianDailies<cr>",      desc = "Daily Notes" },
    { "<leader>oi", "<cmd>ObsidianPasteImg<cr>",     desc = "Paste Image" },
    { "<leader>or", "<cmd>ObsidianRename<cr>",       desc = "Rename Note" },
  },
}
