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
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    notifier = { enabled = true, timeout = 3000 },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    picker = {
      layout = "dropdown", -- Opções: "default", "ivy", "telescope", "dropdown"
      layouts = {
        telescope = {
          reverse = true,
        },
      },
    },
    explorer = {
      win = {
        input = {
          show = false,
        },
      },
    },
  },
  keys = {
    {
      "<leader><space>",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
    {
      "<leader>.",
      function()
        Snacks.scratch()
      end,
      desc = "Toggle Scratch Buffer",
    },
    {
      "<leader>n",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Notification History",
    },
    {
      "<leader>gB",
      function()
        Snacks.gitbrowse()
      end,
      desc = "Git Browse",
    },
    {
      "<leader>gb",
      function()
        Snacks.git.blame_line()
      end,
      desc = "Git Blame Line",
    },
  },
}
