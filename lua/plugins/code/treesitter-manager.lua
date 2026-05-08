return {
  "romus204/tree-sitter-manager.nvim",
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {},
  config = function()
    require("tree-sitter-manager").setup({
      ensure_installed = {"python", "lua", "html"},
      auto_install = true,
    })
  end
}
