return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    lazygit = {
      win = {
        style = "float",
        border = "rounded",
        width = 0.9,
        height = 0.9,
      },
    },
    dashboard = {
      width = 18,
      preset = {
        keys = {
          { icon = "", key = "f", desc = " ̲find file", action = ":lua Snacks.dashboard.pick('files')", },
          { icon = "", key = "n", desc = " ̲new file", action = ":ene | startinsert" },
          { icon = "", key = "g", desc = " ̲grep text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = "", key = "r", desc = " ̲recent file", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = "", key = "c", desc = " ̲config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})", },
          { icon = "", key = "s", desc = " ̲session", section = "session" },
          { icon = "", key = "L", desc= " ̲Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = "", key = "q", desc = " ̲quit", action = ":qa" },
        },
        header = [[
                                                                         
            ████ ██████           █████      ██                 btw
           ███████████             █████                            
           █████████ ███████████████████ ███   ███████████  
          █████████  ███    █████████████ █████ ██████████████  
         █████████ ██████████ █████████ █████ █████ ████ █████  
       ███████████ ███    ███ █████████ █████ █████ ████ █████ 
      ██████  █████████████████████ ████ █████ █████ ████ ██████
        ]],
      },
        formats = {
          key = { '' },
        },
    },
    bigfile = { enabled = true },
    notifier = { enabled = true, timeout = 3000 },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    picker = {
      sources = {
        explorer = {
          layout = {
            auto_hide = { "input" },
          }
        },
      },
      layout = "dropdown", -- Opções: "default", "ivy", "telescope", "dropdown"
      layouts = {
        telescope = {
          reverse = true,
        },
      },
      win = {
        input = {
          keys = {
            ["<Tab>"] = { "list_down", mode = { "i", "n" } },   -- Faz o Tab apenas descer na lista
            ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },   -- Faz o Shift+Tab apenas subir na lista
          },
        },
      },
    },
  },
}
