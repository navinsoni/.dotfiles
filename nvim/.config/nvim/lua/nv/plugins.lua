local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
	  -- Packer can manage itself
	  use 'wbthomason/packer.nvim'
	  use 'kyazdani42/nvim-tree.lua'
	  use 'kyazdani42/nvim-web-devicons'
	  use {"ahmedkhalf/lsp-rooter.nvim", opt = true}
      use 'jiangmiao/auto-pairs'
	  -- use {"windwp/nvim-autopairs", opt = true}

	  use 'neovim/nvim-lspconfig'
	  use 'hrsh7th/nvim-compe'
	  use 'hrsh7th/vim-vsnip'
	  -- use 'kabouzeid/nvim-lspinstall'
	  use  'glepnir/lspsaga.nvim'

	  use 'nvim-treesitter/nvim-treesitter'
	  use 'nvim-treesitter/playground'

	  -- telescope requirements...
	  use 'nvim-lua/popup.nvim'
	  use 'nvim-lua/plenary.nvim'
	  use 'nvim-telescope/telescope.nvim'
	  use 'nvim-telescope/telescope-fzy-native.nvim'

	  use 'mfussenegger/nvim-jdtls'
	  use 'vim-test/vim-test'

	  -- Debugger Plugins
	  use 'puremourning/vimspector'
	  use 'szw/vim-maximizer'
	  -- use 'dense-analysis/ale'
end)
