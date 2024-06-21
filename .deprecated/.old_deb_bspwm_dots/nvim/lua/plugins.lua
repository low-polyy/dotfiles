local execute = vim.api.nvim_command
local fn = vim.fn
local install path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local install_plugins = false


require('packer').startup(function(use)
	use 'wbthomasom/packer.vim'
	use 'williamboman/mason.nvim'

	-- appearance  
	use 'andweeb/presence.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'glepnir/dashboard-nvim'
	use 'hrsh7th/vim-vsnip'
	use {
		'akinsho/bufferline.nvim', tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons'
	}
	use 'sainnhe/gruvbox-material'

	-- writing
	use 'preservim/vim-pencil'
	use 'junegunn/limelight.vim'
--	use 'junegunn/goyo.vim'
	use 'Pocco81/true-zen.nvim'
	use 'ron89/thesaurus_query.vim'
	use 'uga-rosa/cmp-dictionary'
	use 'f3fora/cmp-spell'
	use 'Shougo/vimproc.vim'
	use {
    	"brymer-meneses/grammar-guard.nvim",
    		requires = {
        		"neovim/nvim-lspconfig",
        		"williamboman/nvim-lsp-installer"
    	}
	}
	use 'plasticboy/vim-markdown'
	use 'vim-pandoc/vim-pandoc'
	use 'vim-pandoc/vim-pandoc-syntax'
	use({
    	"iamcco/markdown-preview.nvim",
    	run = function() vim.fn["mkdp#util#install"]() end,
	})

	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
	use 'mzlogin/vim-markdown-toc'


	-- coding	
	use 'hrsh7th/nvim-cmp'
	use {
  	'kyazdani42/nvim-tree.lua',
  		requires = {
    		'kyazdani42/nvim-web-devicons', 
		}
	}

	use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.0',
  		requires = {
	  		'nvim-lua/plenary.nvim'
  		}
	}

	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'onsails/lspkind-nvim'
	use 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
	use 'windwp/nvim-autopairs'

	-- general
	

	if install_plugins then
		require('packer').sync()
	end
end)


if install_plugins then
	return
end
