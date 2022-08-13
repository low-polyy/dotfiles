-- ======== --
-- keybinds --
-- ======== --
keymap = vim.keymap.set
vim.g.mapleader = ' '

------------
-- Coding --
------------
-- Nvim-tree toggle 
keymap ('n', '<Leader>e', ':NvimTreeToggle <CR>')
-- Telescope toggle
keymap ('n', '<Leader>f', ':Telescope find_files <CR>') -- find files
keymap ('n', '<Leader>g', ':Telescope live_grep <CR>') -- grep
-- Lsp-diagnostics toggle 
keymap ('n', '<Leader>t', ':ToggleDiag <CR>')
-------------
-- Writing --
-------------
-- SoftPencil mode on/off
keymap ('n', '<F8>', ':SoftPencil <bar> <CR>')
-- Goyo mode on/off
keymap ('n', '<F9>', ':Goyo <bar> <CR>')
-- LimeLight on/off
keymap ('n', '<F10>', ':Limelight!! <bar> <CR>')
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
