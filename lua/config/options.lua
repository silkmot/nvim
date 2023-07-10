local opt = vim.opt

-- Indent value
local indent = 2
opt.softtabstop = indent
opt.tabstop = indent
opt.shiftwidth = indent

-- Scroll visibility
local scroll = 5
opt.scrolloff = scroll
opt.sidescrolloff = scroll

-- Other options
opt.backup = false
opt.cindent = true
opt.clipboard = 'unnamedplus'
opt.cmdheight = 1
opt.cursorline = true
opt.expandtab = true
opt.fillchars = { eob = ' ' }
opt.history = 10
opt.ignorecase = true
opt.laststatus = 0
opt.lazyredraw = true
opt.linebreak = true
opt.number = true
opt.numberwidth = 1
opt.pumheight = 10
opt.redrawtime = 1500
opt.ruler = false
opt.shiftround = true
opt.shortmess:append 'filmnrwxaoOstTWAIcCqFS'
opt.showcmd = false
opt.showmode = false
opt.showtabline = 0
opt.signcolumn = 'yes'
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.termguicolors = true
opt.timeoutlen = 400
opt.title = false
opt.ttimeoutlen = 50
opt.undofile = true
opt.undolevels = 10
opt.updatetime = 250
opt.whichwrap:append '<>[]hl'
opt.winbar = ' '
opt.wrap = false
opt.writebackup = false