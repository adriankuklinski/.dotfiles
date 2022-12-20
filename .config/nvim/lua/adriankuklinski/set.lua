vim.cmd.colorscheme('rose-pine')
vim.g.mapleader = " "
vim.g.gitblame_enabled = 0
vim.opt.guicursor = ""
vim.opt.mouse = 'a'
vim.opt.title = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.errorbells = false
vim.opt.spell = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.listchars = { tab = '▸ ', trail = '·' }
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.cmdheight = 1
vim.opt.updatetime = 50
vim.opt.shortmess:append("c")
vim.opt.colorcolumn = "120"
vim.opt.clipboard = "unnamedplus"
vim.opt.confirm = true
