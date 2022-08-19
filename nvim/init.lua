
-- ====================== --
-- plugins & dependencies --
-- ====================== --
require('plugins')
require('keybinds')
require('plugin_conf.dashboard')
require('plugin_conf.lualine')
require('plugin_conf.nvim-tree')
require('plugin_conf.presence')
require('plugin_conf.telescope')
require('lsp_conf.lsp-config')
require('lsp_conf.lsp-cmp')
require('plugin_conf.toggle_lsp_diagnostics')
-- require('plugin_conf.bufferline')
require('plugin_conf.autopairs')
 -- require('plugin_conf.colorizer')
require('true-zen.ataraxis')
require('true-zen.narrow')
require('true-zen.minimalist')
-- =============== --
-- editor settings --
-- =============== --
vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true


vim.cmd "set mouse=a"


vim.g.gruvbox_material_background = 'soft'
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_menu_selection_background = 'grey'
vim.g.gruvbox_material_transparent_background = 1
vim.cmd "colorscheme gruvbox-material"

vim.opt.thesaurus = "/Users/ura0aka/.config/nvim/thesaurus/mthesaur.txt"
vim.opt.complete = s
