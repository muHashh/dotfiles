-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local delete = vim.keymap.del

delete("n", "<S-h>")
delete("n", "<S-l>")

map("n", "<leader>[", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<leader>]", "<cmd>bnext<cr>", { desc = "Next buffer" })
