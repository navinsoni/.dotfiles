vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = " "

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- better window navigation
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-\\><C-N><C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-\\><C-N><C-w>l', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-\\><C-N><C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-\\><C-N><C-w>k', {noremap = true, silent = true})

vim.api.nvim_set_keymap('i', '<Leader>h', '<C-\\><C-N><C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Leader>l', '<C-\\><C-N><C-w>l', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Leader>j', '<C-\\><C-N><C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Leader>k', '<C-\\><C-N><C-w>k', {noremap = true, silent = true})

vim.api.nvim_set_keymap('t', '<Leader>h', '<C-\\><C-N><C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Leader>l', '<C-\\><C-N><C-w>l', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Leader>j', '<C-\\><C-N><C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Leader>k', '<C-\\><C-N><C-w>k', {noremap = true, silent = true})

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

-- vim test
vim.api.nvim_set_keymap('n', '<Leader>tf', ':TestFile<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>tn', ':TestNearest<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>tl', ':TestLast<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>tv', ':TestVisit<CR>', {noremap = true, silent = true})
