-- Snacks: Arquivos e Explorador
vim.keymap.set("n", "<leader><space>", function() Snacks.picker.files() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "File Explorer" })
vim.keymap.set("n", "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, { desc = "Get config files" })

-- Snacks: Buffers e Scratch
vim.keymap.set("n", "<leader>.", function() Snacks.scratch() end, { desc = "Toggle Scratch Buffer" })
vim.keymap.set("n", "<leader>bb", function() 
  Snacks.picker.buffers({
    layout = { preset = "vscode", preview = true },
    on_show = function() vim.cmd("stopinsert") end,
  }) 
end, { desc = "Buffers" })
vim.keymap.set("n", "<M-w>", function() Snacks.bufdelete() end, { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>bo", function() Snacks.bufdelete.other() end, { desc = "Close Other Buffers" })

-- Snacks: Busca e Histórico
vim.keymap.set("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Notification History" })
vim.keymap.set("n", "<leader>/", function() Snacks.picker.grep() end, { desc = "Find word in current project" })

-- Snacks: Git
vim.keymap.set("n", "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse" })
vim.keymap.set("n", "<leader>gb", function() Snacks.git.blame_line() end, { desc = "Git Blame Line" })
vim.keymap.set("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "LazyGit (Snacks)" })
