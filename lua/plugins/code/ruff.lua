return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ruff = {
					settings = {
						configuration = {
							lineLength = 80,
							lint = {
								select = { "I", "F401" },
								ignore = {},
							},
						},
					},
				},
			},
		},
	},
}
