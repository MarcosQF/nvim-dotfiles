local opt = vim.opt

opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.clipboard = "unnamedplus"
opt.fillchars:append({ eob = " " })
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.swapfile = false

vim.diagnostic.config({
  virtual_text = true,
  underline = true
})
