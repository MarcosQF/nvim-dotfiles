return {
	"williamboman/mason.nvim",
  event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	build = ":MasonUpdate",
	opts = {
		ensure_installed = {
			"pyright",
			"ruff",
			"lua-language-server",
			"zuban",
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
		require("mason-lspconfig").setup({
			ensure_installed = { "pyright", "ruff", "lua_ls", "zuban" },
		})
	end,
}
