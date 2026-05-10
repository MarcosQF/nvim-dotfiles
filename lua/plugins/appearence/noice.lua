return{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      {
        filter = {
          event = "msg_showmode",
          any = {
            { find = "recording" }, -- Deixa a macro passar internamente
          },
        },
        skip = true, -- Mas não mostra como notificação/pop-up
      },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  }
}
