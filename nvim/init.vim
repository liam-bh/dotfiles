" boilerplate
syntax on
set number
set mouse=a

" tab configuration
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" plugins
call plug#begin('~/.config/nvim/pluginStuff')

Plug 'morhetz/gruvbox'

call plug#end()

" colour theme
autocmd vimenter * ++nested colorscheme gruvbox

" for regular text editing
command Writing map j gj|map k gk

" autoclosing
source delimitMate/autoload/delimitMate.vim | source delimitMate/plugin/delimitMate.vim
imap {<CR> {<CR>}<C-o>O<tab>
