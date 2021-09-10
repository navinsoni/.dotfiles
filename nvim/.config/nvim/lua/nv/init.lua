require('nv.plugins')
require('nv.keymappings')
require('nv.compe-config')
require('nv.lspsaga-config')
require('nv.telescope-config')
-- require('nv.lspinstall-config')
require('nv.lspjava-config')
require('nv.efm-config')

local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

-- require'lspconfig'.lua.setup{ on_attach=on_attach }
require'lspconfig'.tsserver.setup{ on_attach=on_attach }
require("lspconfig").pyright.setup{ on_attach=on_attach }

-- require'lspconfig'.jdtls.setup{ on_attach=on_attach}
require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
