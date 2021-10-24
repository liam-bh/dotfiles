syntax on
set number
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin('~/.config/nvim/pluginStuff')

Plug 'morhetz/gruvbox'

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
