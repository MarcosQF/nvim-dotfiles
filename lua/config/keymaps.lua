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
-- vim.keymap.set("n", "<leader>bb", function() 
--   Snacks.picker.buffers({
--     layout = { preset = "vscode", preview = true },
--     on_show = function()
--       vim.cmd("stopinsert")
--     end,
--   }) 
-- end, { desc = "Buffers" })
--
-- vim.keymap.set("n", "<M-w>", function()
-- 	Snacks.bufdelete()
-- end, { desc = "Close Buffer" })
--
-- vim.keymap.set("n", "<leader>bo", function()
-- 	Snacks.bufdelete.other()
-- end, { desc = "Close Other Buffers" })
--
-- vim.keymap.set("n", "<leader>/", function()
-- 	Snacks.picker.grep()
-- end, { desc = "Find word in current project" })
--
-- vim.keymap.set({ "n", "v" }, "gh", "^", { desc = "Go to beginning of the line" })
-- vim.keymap.set({ "n", "v" }, "gl", "g_", { desc = "Go to ending of the line" })
-- vim.keymap.set("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "LazyGit (Snacks)" })
--
-- vim.keymap.set("n", "<leader>fc", function()
--   Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
-- end, { desc = "Get config files" })
