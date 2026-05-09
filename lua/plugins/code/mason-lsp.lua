return {
  {
    "williamboman/mason.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
        pyright = {},
        ruff = {},
        zuban = {},
      },
    },
    config = function(_, opts)
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(opts.servers),
      })

      for server, server_opts in pairs(opts.servers) do
        vim.lsp.config(server, server_opts)
        vim.lsp.enable(server)
      end
    end
  },
}
