return {
  'saghen/blink.cmp',
  version = '*', 
  dependencies = {
    'saghen/blink.lib',
    'rafamadriz/friendly-snippets',
  },

  opts = {
    keymap = { preset = 'enter' },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },

    fuzzy = { 
      -- Mude de "rust" para "lua"
      implementation = "lua" 
    }
  },
}
