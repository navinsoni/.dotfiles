lua require('nv')

augroup lsp
    autocmd!
    autocmd FileType java luado jdtls_setup()
augroup end
