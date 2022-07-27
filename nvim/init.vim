"Plugins
call plug#begin()
Plug 'preservim/vim-pencil'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'andweeb/presence.nvim'
call plug#end()


set autoindent
set linebreak
set wrap


"SoftPencil mode on/off (fn+8)
map <F8> :SoftPencil <bar> <CR>
"Goyo mode on/off (fn+9)
map <F9> :Goyo <bar> <CR>
"LimeLight on/off (fn+10)
map <F10> :Limelight0.5 <bar> <CR>


"Thesaurus and spell checking stuff
"Set spell checking to English (fn+6)
map <F6> :setlocal spell! spelllang=en_us <CR>
"Set spell checking to French (fn+7)
map <F7> :setlocal spell! spelllang=fr <CR>

set thesaurus+=/Users/ura0aka/.config/nvim/mthesaur.txt
set complete+=s
