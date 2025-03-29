-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set cursor to a block in normal and insert mode
-- vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- Set cursor to a thin vertical bar in ALL modes
-- vim.opt.guicursor = "a:ver25-Cursor"

-- You can adjust the thickness (verNN):
-- vim.opt.guicursor = "a:ver10-Cursor" -- Even thinner
-- vim.opt.guicursor = "a:ver50-Cursor" -- Thicker
-- vim.opt.guicursor = "a:vertical-Cursor" -- Might default to thinnest possible

-- If you DON'T want it colored by the theme's Cursor group:
-- vim.opt.guicursor = "a:ver25"

-- remove annoying jump animations when moving around
vim.g.snacks_animate = false
