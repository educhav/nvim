local o = vim.o
local w = vim.wo
local b = vim.bo
local g = vim.g
local cmd = vim.cmd

-- Colors
o.termguicolors = true
o.syntax = 'on'

-- Searching
o.hlsearch = false
o.ignorecase = true
o.infercase = true

-- Mouse/Cursor
o.mouse = 'a'
o.ruler = true

-- Buffers
o.hidden = true
o.splitbelow = true
o.splitright = true
o.updatetime = 100
o.timeoutlen = 500

-- Files
o.swapfile = false
o.backup = false
o.writebackup = false
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'

-- Tabs
cmd[[set tabstop=4]]
cmd[[set shiftwidth=4]]
b.expandtab = true
o.smarttab = true
b.smartindent = true
b.autoindent = true

-- Status_line
o.showmode = false
o.laststatus = 2

-- Miscellaneous
o.clipboard = 'unnamedplus'
cmd[[set formatoptions-=cro]]
cmd "set iskeyword-=_"
cmd('colorscheme tokyodark')

w.number = true
w.relativenumber = true
w.wrap = false
