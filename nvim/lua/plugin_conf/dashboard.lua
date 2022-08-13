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
  shortcut = '<LDR> + n',
  action ='enew'},

  {icon = '  ',
  desc = 'Find Files                     ',
  shortcut = '<LDR> + f',
  action ='Telescope find_files'},

  {icon = '  ',
  desc = 'Live grep                      ',
  shortcut = '<LDR> + g',
  action = 'Telescope live_grep'},
}

db.center_pad = 3

local plugins_count = vim.fn.len(
    vim.fn.globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1)
)

db.custom_footer = {'--  Neovim Loaded: ' .. plugins_count .. ' Plugins --'}

local handle = io.popen("nvim --version | head -n1")
local ver = handle:read("*a")

db.custom_footer = {'-- ' .. 'NEOVIM v.0.7.2' .. ' --'} 
db.footer_pad = 17


local dashboard_height = 27
db.header_pad  = math.floor((vim.api.nvim_list_uis()[1]['height'] - dashboard_height) / 4)

vim.cmd([[highlight DashboardHeader guifg=#ffffff]])


