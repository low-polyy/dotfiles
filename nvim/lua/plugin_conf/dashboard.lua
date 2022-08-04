-- Dashboard config
local db = require('dashboard')
db.custom_header = {
    '                                                              ',
    '    ⢀⣀⣤⣤⣤⠤⢤⣤⣤⣤⣤⣄⣀⡀           ⢀⣠⣤⣄⡀            ⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀   ',
    ' ⢀⣤⠚⠩⠁⡄ ⠠⣤⠒⠒⣂ ⢈⣨⣭⣿⠛⠶⣦⣤⣄⡀   ⢠⣾⡟⠉⠉⠝⠿⠇    ⢀⣠⡤⠔⠒⣻⠟⠋⠩⠉⢁⣀⡀  ⣶  ⠙⡛⠷  ',
    ' ⠸⢟⡠⠒⢊⡤  ⠋⣠ ⠈⣉⣉⣉⣉⣀⣛⣿⡒⠭⡿⢿⣷⣤⣤⣀⣽⣇⣴⠆⣴⡃⢀⣠⣤⠴⣚⣫⡥ ⠒⠛⠁⣀⣉⣉⣙⢏⡉  ⢀⣼⣤⣜⠳⡦⠂  ',
    '   ⠐⠚⠫⣤⠖⢣⣤⡕ ⠉⣩⣤⠔ ⠂⣋⣭⣥⣤⠴⠛⣛⠈⢩⣿⠿⠛⢉  ⡐⠞⠫⢍⠙⣓⠢⠴⣥⣍⣙⠛⢓⡢⢤⣬⠉⠅ ⣤⡜⢛⠻⠛⠉⠁   ',
    '      ⠘⢔⢎⣡⡔⠂⣠⡿⠁⠒⢛⡻⢛⣩⠅  ⠉  ⠚⣯⣄⢠⣿⢀⣾⠇ ⠓ ⠁⠂⠈⠍⠐⠈⡉⣿⠛⣛⠛⠉⣤⣰⣿⣿⡟⠛⠁      ',
    '        ⠙⠛⠐⠚⠋ ⠒⣲⡿⠇⣋        ⢺⡏⠈⣀ ⠉⠈        ⠙⢿⠟⢰⣖⡢ ⠂⠒⠚⠉         ',
    '             ⣴⠛⠅⢀⣾⠟⢃       ⢹⠃⠠⠁⠈⠩         ⢠⣿ ⣀⢹⣿⡷             ',
    '             ⢿⣤⢚⣫⠅         ⢸⠇ ⢚ ⢀         ⣸⡇ ⠉⣿⣿⠇             ',
    '             ⠈⠛⢻⣥⡚⠔⣠⢣⣄⡀    ⢸⡇ ⢘ ⠈ ⠠⠈    ⣀⣰⡿⣧⣄⠾⠋⠁              ',
    '                ⠈⠑⠁        ⠘⣿⡀⣈⣀    ⠈  ⠈⠙⠁                    ',
    '                            ⠘⣷⠁                               ',
    '                             ⠙⣤                               ',
    '                              ⠛⠂                              ',
    '                                                              '
}

db.custom_center = {
  {icon = '  ',
  desc = 'New File                       ',
  shortcut = 'LDR n',
  action ='enew'},

  {icon = '  ',
  desc = 'Find Files                     ',
  shortcut = 'LDR f',
  action ='Telescope find_files'},

  {icon = '  ',
  desc = 'Neovim config                  ',
  shortcut = 'LDR nc',
  action = 'lua config_nvim()'},
}

local plugins_count = vim.fn.len(
    vim.fn.globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1)
)

db.custom_footer = {'--  Neovim Loaded: ' .. plugins_count .. ' Plugins --'}

local handle = io.popen("nvim --version | head -n1")
local ver = handle:read("*a")

db.custom_footer = {'-- ' .. 'NEOVIM v.0.7.2' .. ' --'} 

local dashboard_height = 27
db.header_pad  = math.floor((vim.api.nvim_list_uis()[1]['height'] - dashboard_height) / 4)

vim.cmd([[highlight DashboardHeader guifg=#ffffff]])


