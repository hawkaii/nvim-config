return {
  -- Fix for Neovim Nightly (v0.11) regression with ts_ls
  -- Issue: vim.fs.root crashes when receiving table of root markers
  -- GitHub Issues: #34099, #34145
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {
          -- Override root_dir to use stable root_pattern instead of broken vim.fs.root
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")(fname)
          end,
        },
      },
    },
  },
}
