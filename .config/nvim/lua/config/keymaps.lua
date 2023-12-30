-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local delete = vim.keymap.del

-- Next/Prev Buffer
delete("n", "<S-h>")
delete("n", "<S-l>")
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })

-- Terminal
map("n", "<leader>tt", "<cmd>lcd %:p:h | term<cr>", { desc = "Create terminal (buffer dir)" })
map("n", "<leader>th", "<cmd>split | lcd %:p:h | term<cr>", { desc = "Create horizontal terminal (buffer dir)" })
map("n", "<leader>tv", "<cmd>vsplit | lcd %:p:h | term<cr>", { desc = "Create vertical terminal (buffer dir)" })
