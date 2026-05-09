vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")
vim.keymap.set("i", "<C-s>", "<esc><cmd>w<cr>")
vim.keymap.set("v", "<C-s>", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "[Q]uit [Q]uickly (close buffer)" })

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<esc>", "<cmd>noh<cr>")

vim.keymap.set("n", "gm", "`", { desc = "Go to mark" })

vim.keymap.set("n", "vig", "ggVG", { desc = "Select all file" })

vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")

vim.keymap.set("v", "gl", "$")
vim.keymap.set("v", "gh", "0")
