local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'



require('packer').startup(function(use)
	
	use 'wbthomason/packer.nvim'
	
	use 'andweeb/presence.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'hrsh7th/nvim-cmp'

	use 'preservim/vim-pencil'
	use 'junegunn/goyo.vim'
	use 'junegunn/limelight.vim'
	use	'ron89/thesaurus_query.vim'


	if install_plugins then
		require('packer').sync()
	end
end)


if install_plugins then
	return
end



-- ======= --
-- editor settings --
-- ======= --
vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- ======= --
-- keybinds --
-- ======= --
keymap = vim.keymap.set
-- SoftPencil mode on/off
keymap ('n', '<F8>', ':SoftPencil <bar> <CR>')
-- Goyo mode on/off
keymap ('n', '<F9>', ':Goyo <bar> <CR>')

-- Thesaurus & spell checking --
-- Set spell checking to English(US)
keymap ('n', '<F6>', ':setlocal spell! spelllang=en_us <CR>')
-- Set spell checking to French
keymap ('n', '<F7>', ':setlocal spell! spelllang=fr <CR>')


-- ====== --
-- plugins --
-- ====== --

vim.opt.showmode = false
require('lualine').setup({
	options = {
		icons_enabled = false,
		component_separators = '|',
		section_separators = '',
	},
})
