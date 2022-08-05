local custom_gruvbox = require'lualine_conf.color_schemes.custom_gruvbox'

require('lualine').setup({
	options = {
		theme = custom_gruvbox,
    	icons_enabled = true,
    	component_separators = '|',
    	section_separators = '',
    },

	sections = {
    		lualine_a = {'mode'},
    		lualine_b = {'branch'},
    		lualine_c = {'filename'},
    		lualine_x = {'encoding', 'fileformat', 'filetype'},
			lualine_y = {'progress'},
			lualine_z = {'location'}
	},

	refresh = {
		statusline = 15000,
		tabline = 15000,
	},
})
