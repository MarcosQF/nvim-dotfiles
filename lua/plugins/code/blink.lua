return {
	"saghen/blink.cmp",
	version = "v1.*",
  event = "InsertEnter",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	opts = {
    cmdline = {
      enabled = true,
      keymap = nil,
      sources = function()
        local type = vim.fn.getcmdtype()
        if type == '/' or type == '?' then return { 'buffer' } end
        if type == ':' then return { 'cmdline' } end
        return {}
      end,
    },
		keymap = {
			preset = "none",
      ["<CR>"] = { "accept", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
			["<C-a>"] = { "show_documentation", "hide_documentation" },
			["<C-y>"] = { "show", "hide" },
			["<C-e>"] = { "hide" },
			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<C-p>"] = { "select_prev", "fallback" },
			["<C-n>"] = { "select_next", "fallback" },
			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },
		},
		completion = {
			list = {
				selection = {
					preselect = false,
					auto_insert = false,
				},
			},
		},
	},
}
