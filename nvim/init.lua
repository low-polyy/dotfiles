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
require('plugin_conf.bufferline')
-- =============== --
-- editor settings --
-- =============== --
vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.cmd "set mouse=a"


vim.g.gruvbox_material_background = 'soft'
vim.g.gruvbox_material_better_performance = 1
vim.cmd "colorscheme gruvbox-material"

vim.opt.thesaurus = "/Users/ura0aka/.config/nvim/thesaurus/mthesaur.txt"
vim.opt.complete = s

