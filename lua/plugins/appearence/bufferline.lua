return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  keys = {
    { "H", "<cmd>BufferLineCyclePrev<cr>", desc = "Buffer Anterior" },
    { "L", "<cmd>BufferLineCycleNext<cr>", desc = "Próximo Buffer" },
  },
  opts = {
    options = {
      mode = "buffers",
      -- O segredo para o visual da imagem está aqui:
      separator_style = "slant", -- Ou tente "slope" para o efeito inclinado
      
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      color_icons = true,
      
      -- Ajuste de padding para dar esse ar mais "espaçoso" da foto
      left_trunc_marker = '',
      right_trunc_marker = '',
      max_name_length = 18,
      tab_size = 18,
      diagnostics = "nvim_lsp",
      
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          separator = true
        }
      },
    },
    -- Se quiser que as cores batam com o seu tema (Rosé Pine/Gruvbox),
    -- o bufferline costuma herdar automaticamente, mas o 'slant' destaca as abas.
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    vim.opt.showtabline = 2
    require("bufferline").setup(opts)
  end
}
