return {
	"neovim/nvim-lspconfig",
  event = {"BufReadPre", "BufNewFile"},
	dependencies = { "saghen/blink.cmp" },
	config = function()
		vim.diagnostic.config({
			virtual_text = {
				prefix = "●",
				source = "if_many",
			},
			float = {
				border = "rounded",
				source = "always",
			},
			signs = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})

		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })
		vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Documentation" })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
	end,
}
