-- =============================================================================
-- 1. GENERAL SETTINGS (LEADER KEYS)
-- =============================================================================
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- =============================================================================
-- 2. FILE AND SYSTEM OPERATIONS
-- =============================================================================
vim.keymap.set("n", "W", "<cmd>w<cr>")

-- Quit or close current buffer quickly
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "[Q]uit [Q]uickly (close buffer)" })

-- Clear search highlights using Esc
vim.keymap.set("n", "<esc>", "<cmd>noh<cr>")

-- =============================================================================
-- 3. WINDOW NAVIGATION (SPLITS)
-- =============================================================================
-- Move between splits using Ctrl + h,j,k,l
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- =============================================================================
-- 4. TEXT MOTION AND SELECTION
-- =============================================================================
-- Quick jumps to start (gh) and end (gl) of line
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("v", "gl", "$")
vim.keymap.set("v", "gh", "0")

-- Select entire file content (vig)
vim.keymap.set("n", "vig", "ggVG", { desc = "Select all file" })

-- Go to a specific mark
vim.keymap.set("n", "gm", "`", { desc = "Go to mark" })

-- =============================================================================
-- 5. LSP (LANGUAGE SERVER PROTOCOL) & DIAGNOSTICS
-- =============================================================================
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Documentation" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
