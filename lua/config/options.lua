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
opt.termguicolors = true
opt.showtabline = 2

vim.o.autocomplete = false
vim.o.pumblend = 10
vim.o.pumheight = 15
vim.o.completeopt = 'menu,menuone,noselect,nearest'

vim.keymap.set('i', '<Tab>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-n>'
  else
    return '<Tab>'
  end
end, { expr = true, noremap = true })


vim.keymap.set('i', '<S-Tab>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-p>'
  else
    return '<S-Tab>'
  end
end, { expr = true, noremap = true })



vim.diagnostic.config({
  virtual_text = true,
  underline = true
})
