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

-- =============== --
-- editor settings --
-- =============== --
vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = false


vim.opt.thesaurus = "/Users/ura0aka/.config/nvim/thesaurus/mthesaur.txt"
vim.opt.complete = s


