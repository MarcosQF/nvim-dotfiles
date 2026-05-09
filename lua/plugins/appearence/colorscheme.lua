-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       flavour = "mocha",
--       term_colors = true,
--       background = {
--         light = "latte",
--         dark = "mocha",
--       },
--     },
--     config = function(_, opts)
--       require("catppuccin").setup(opts)
--       vim.cmd.colorscheme "catppuccin"
--     end,
--   },
-- }


return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,

  opts= {
    compile = true,
    transparent = false,
    theme = "wave",
    undercurl = true,
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none"
          }
        }
      }
    }
  },

  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa")
  end,
}
