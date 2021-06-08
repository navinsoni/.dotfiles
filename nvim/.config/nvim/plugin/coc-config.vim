" GoTo code navigation.
nnoremap <leader>ghw :h <C-R>=expand('<cword>')<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand('<cword>')<CR><CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>ch <Plug>(coc-diagnostic-prev)
nmap <leader>dl <Plug>(coc-diagnostic-next)
nmap <leader>cf  <Plug>(coc-fix-current)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart


au FileType java call SetWorkspaceFolders()

function! SetWorkspaceFolders() abort
    " Only set g:WorkspaceFolders if it is not already set
    if exists("g:WorkspaceFolders") | return | endif

    if executable("findup")
        let l:ws_dir = trim(system("cd '" . expand("%:h") . "' && findup packageInfo"))
        " Bemol conveniently generates a '$WS_DIR/.bemol/ws_root_folders' file, so let's leverage it
        let l:folders_file = l:ws_dir . "/.bemol/ws_root_folders"
        if filereadable(l:folders_file)
            let l:ws_folders = readfile(l:folders_file)
            let g:WorkspaceFolders = filter(l:ws_folders, "isdirectory(v:val)")
        endif
    endif
endfunction
