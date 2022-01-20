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

" colour scheme
Plug 'morhetz/gruvbox'

" tree sitter
Plug 'nvim-treesitter/nvim-treesitter'

" telecope dependancies
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lua/plenary.nvim'
" fuzzy finder
Plug 'nvim-telescope/telescope.nvim'

" smooth scroll
Plug 'karb94/neoscroll.nvim'

" Cheatsheet
Plug 'sudormrfbin/cheatsheet.nvim'

" Env watcher
Plug 'LinArcX/telescope-env.nvim'

" File explorer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

" smooth scroll
lua require('neoscroll').setup()

lua <<EOF
-- Tree sitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}
-- Cheat sheet
require("cheatsheet").setup({
   bundled_cheatsheets = false,
   bundled_plugin_cheatsheets = false,
})
-- env
require('telescope').load_extension('env')
-- file explorer
require'nvim-tree'.setup()
EOF

" cheatsheet
"

" colour theme
autocmd vimenter * ++nested colorscheme gruvbox

" for regular text editing
command Writing map j gj|map k gk|set linebreak

" autoclosing
source ~/.config/nvim/delimitMate/autoload/delimitMate.vim | source ~/.config/nvim/delimitMate/plugin/delimitMate.vim
imap {<CR> {<CR>}<C-o>O

" use system clipboard
set clipboard+=unnamedplus
