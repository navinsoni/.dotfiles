vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', 'f', '<cmd>lua vim.lsp.buf.formatting<CR>', {noremap = true, silent = true})
vim.cmd("nnoremap <silent> f <cmd>lua vim.lsp.buf.formatting()<CR>")

vim.lsp.handlers["textDocument/references"] = require("telescope.builtin").lsp_references
vim.api.nvim_set_keymap('n', '<Leader>rr', ':Lspsaga rename<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'ca', ':Lspsaga code_action<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', ':Lspsaga signature_help<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-p>', ':Lspsaga diagnostic_jump_prev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':Lspsaga diagnostic_jump_next<CR>', {noremap = true, silent = true})

-- scroll down hover doc or scroll in definition preview
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', {noremap = true, silent = true})
-- scroll up hover doc
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', {noremap = true, silent = true})


vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')
