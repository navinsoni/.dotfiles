local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzy_native')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/dotfiles/awesome-streamerrc/ThePrimeagen/",
    })
end

vim.api.nvim_set_keymap("i", "<Leader>ff", "v:lua.find_files()", {expr = true})
-- Using lua functions
--nnoremap <leader>ff <cmd>require('telescope.builtin').find_files()<cr>
--nnoremap <leader>fg <cmd>require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>require('telescope.builtin').help_tags()<cr>



vim.cmd("nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>")
vim.cmd("nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>")
vim.cmd("nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>")
vim.cmd("nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand('<cword>') }<CR>")
vim.cmd("nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>")
vim.cmd("nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>")
