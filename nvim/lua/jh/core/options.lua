vim.o.hlsearch = false
vim.o.incsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true
vim.o.undodir = vim.fn.expand('~') .. '/dotfiles/nvim/lua/jh/undodir'
vim.o.swapfile = false
vim.o.undolevels = 1000

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
vim.o.showmode = false
vim.o.laststatus = 2

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.o.title = true

vim.o.wrap = false

vim.o.scrolloff = 10
vim.o.sidescrolloff = 10

vim.o.cursorline = true

vim.o.textwidth = 80
vim.o.colorcolumn = "80"

vim.o.visualbell = true
vim.o.errorbells = false

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = 4
vim.o.smartindent = true
