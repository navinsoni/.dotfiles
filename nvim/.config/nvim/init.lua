require('plugins')
require('keymappings')
require('compe-config')
require('lspinstall-config')

local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

require'lspconfig'.tsserver.setup{ on_attach=on_attach }
require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
