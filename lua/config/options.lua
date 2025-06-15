-- [[ Setting options ]]

-- Look and feel
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5

vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.breakindent = true

-- how/when we split
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = 'split'

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.undofile = true
vim.opt.confirm = true
vim.opt.mouse = 'a'

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
