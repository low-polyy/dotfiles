-- ======= --
-- plugins --
-- ======= --


require('plugins')
require('plugin_conf.dashboard')
require('plugin_conf.lualine')




-- =============== --
-- editor settings --
-- =============== --
vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.thesaurus = "/Users/ura0aka/.config/nvim/thesaurus/mthesaur.txt"
vim.opt.complete = s



-- ======== --
-- keybinds --
-- ======== --
keymap = vim.keymap.set
-- SoftPencil mode on/off
keymap ('n', '<F8>', ':SoftPencil <bar> <CR>')
-- Goyo mode on/off
keymap ('n', '<F9>', ':Goyo <bar> <CR>')
-- LimeLight on/off
keymap ('n', '<F10>', ':Limelight <bar> <CR>')
vim.g.limelight_conceal_ctermfg = 'gray'

-- Thesaurus & spell checking --
-- Set spell checking to English(US)
keymap ('n', '<F6>', ':setlocal spell! spelllang=en_us <CR>')
-- Set spell checking to French
keymap ('n', '<F7>', ':setlocal spell! spelllang=fr <CR>')
-- Thesaurus query
keymap ('n', '<F3>', ':ThesaurusQueryLookupCurrentWord <CR>')
keymap ('n', '<F4>', ':ThesaurusQueryReplaceCurrentWord <CR>')
vim.g.tq_mthesaur_file = '/Users/ura0aka/.config/nvim/thesaurus/mthesaur.txt'
vim.g.tq_enabled_backends={'synonymo_fr','cnrtl_fr','mthesaur_txt'}
