lua require('nv')

augroup lsp
    autocmd!
    autocmd FileType java luado jdtls_setup()
augroup end

let test#strategy = "neovim"
let test#custom_runners = {'java': ['BrazilTest']}
let test#java#runner = 'braziltest'
let test#enabled_runners = ["java#braziltest"]
