local execute = vim.api.nvim_command
local fn = vim.fn
local install path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

require('packer').startup(function(use)
	use 'wbthomasom/packer.vim'

	-- appearence  
	use 'andweeb/presence.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'glepnir/dashboard-nvim'

	-- writing
	use 'preservim/vim-pencil'
	use 'junegunn/limelight.vim'
	use 'junegunn/goyo.vim'
	use 'ron89/thesaurus_query.vim'
	use 'kamykn/spelunker.vim'

	-- coding	
	use 'hrsh7th/nvim-cmp'

	-- general
	

	if install_plugins then
		require('packer').sync()
	end
end)


if install_plugins then
	return
end