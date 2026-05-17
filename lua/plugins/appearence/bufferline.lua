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
      separator_style = "thin",

      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      color_icons = true,

      left_trunc_marker = '',
      right_trunc_marker = '',
      max_name_length = 18,
      tab_size = 18,
      diagnostics = "nvim_lsp",

      hover = {
          enabled = true,
          delay = 200,
          reveal = {'close'}
      },

      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          separator = true
        }
      },
    },
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    vim.opt.showtabline = 2
    require("bufferline").setup(opts)
  end
}
