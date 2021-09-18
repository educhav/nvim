vim.g.mapleader = " "
-- window movement
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-H>', '<C-W><C-H>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent= true })
vim.api.nvim_set_keymap('n', '<C-w>', ':bd!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ZZ', ':execute "NvimTreeClose" | :wq!<CR>', { noremap = true, silent = true })

-- better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })

-- telescope
vim.api.nvim_set_keymap('n', '<C-c>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>Telescope oldfiles<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-a>', '<cmd>Telescope file_browser<cr>', { noremap = true, silent = true })

-- dashboard
vim.api.nvim_set_keymap('n', '<C-s>', ':<C-u>SessionSave<cr>', { noremap = true, silent = true })

-- lsp vanilla
vim.api.nvim_set_keymap('n', '<Leader>d', ':lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>i', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true})

-- lsp-saga
vim.api.nvim_set_keymap('n', '<Leader>f', ':Lspsaga lsp_finder<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rn', ':Lspsaga rename<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':Lspsaga diagnostic_jump_prev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':Lspsaga open_floaterm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>:Lspsaga close_floaterm<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>rd', ':Lspsaga preview_definition<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rh', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rs', ':Lspsaga signature_help<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ca', ':Lspsaga code_action<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>ca', ':<C-U>Lspsaga range_code_action<CR>', { noremap = true, silent = true })

-- -- bufferline
vim.api.nvim_set_keymap('n', '<A-j>', ':BufferLineMoveNext<CR>', { silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<A-k>', ':BufferLineMovePrev<CR>', { silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>be', ':BufferLineSortByExtension<CR>', { silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>bd', ':BufferLineSortByDirectory<CR>', { silent = true, noremap = true})

-- zen-mode
vim.api.nvim_set_keymap('n', '<Leader>z', ':ZenMode<CR>', { noremap = true, silent = true })

-- html (poor man's snippets xd)
vim.api.nvim_set_keymap('n', '<Leader>;;','i<!DOCTYPE html><CR><html><CR><BS><head><CR><title></title><CR><meta charset=\"utf-8\"><CR><link rel=\"shortcut icon\" href=\"\" type=\"image/x-icon\"><CR><link rel=\"stylesheet\" href=\"style.css\"><CR></head><CR><body><CR><header><CR></header><CR><main><CR><div class=\"main\"><CR><h1></h1><CR></div><CR></main><CR><footer><CR></footer><CR></body><CR></html>4Gwli',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>;l','i<!DOCTYPE html><CR><html><CR><BS><head><CR><title></title><CR><meta charset=\"utf-8\"><CR><link rel=\"shortcut icon\" href=\"../../assets/garfield.png\" type=\"image/x-icon\"><CR><link rel=\"stylesheet\" href=\"../../style.css\"><CR></head><CR><body><CR><header><CR></header><CR><main><CR><div class=\"main\"><CR><h1></h1><CR></div><CR><div class=\"sidenav\"><CR><a href=\"https://educhav.xyz/\">Home</a><CR><BS><BS><br><br><CR><a href=\"https://educhav.xyz/blog/\">Blog</a><CR></div><CR></main><CR><footer><CR></footer><CR></body><CR></html>4Gwli',{ noremap = true, silent = true })
