-- Disable netrw before any plugin loads so oil.nvim can take over as the default file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
