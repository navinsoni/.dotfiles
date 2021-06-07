vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = " "

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- better window navigation
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', {silent = true})

-- smart indent
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

vim.api.nvim_set_keymap('i', 'qq', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'qq', '<ESC>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})


-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})
