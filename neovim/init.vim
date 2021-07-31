" Plugins
call plug#begin('~/.config/nvim/plugged')

" Themes and Styling
Plug 'crusoexia/vim-dracula'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'

" Utilities
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-surround'
Plug 'hrsh7th/nvim-compe'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'terrortylor/nvim-comment'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'


Plug 'sbdchd/neoformat'
" CSS
Plug 'ai/autoprefixer'

" ???
Plug 'HerringtonDarkholme/yats.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'sbdchd/neoformat'

" Python
Plug 'andviro/flake8-vim'
Plug 'vim-scripts/indentpython.vim'

" HTML
Plug 'mattn/emmet-vim'

" JS
Plug 'benjie/neomake-local-eslint.vim'

" PHP
Plug 'stephpy/vim-php-cs-fixer'

call plug#end()
source $HOME/.config/nvim/config/general.vimrc
source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/keys.vimrc
source $HOME/.config/nvim/config/chris.vimrc
source $HOME/.config/nvim/config/python.vimrc
" PLUGINS
source $HOME/.config/nvim/plugin/telescope.vim
" LUA
source $HOME/.config/nvim/config/general.lua
source $HOME/.config/nvim/lua/telescope.lua
source $HOME/.config/nvim/plugin/netrw.vim
source $HOME/.config/nvim/plugin/set.vim


filetype on
set nohlsearch        " highlight matches turn off search highlight
filetype indent on  " load filetype-specific indent files
let mapleader = " "
syntax enable 


augroup CHRIS
  autocmd!
  autocmd FileType html,css,javascript EmmetInstall
  " Deal with white space
  autocmd BufWritePre *.js :%s/\s\+$//e 
  autocmd BufWritePre *.jsx :%s/\s\+$//e 
  autocmd BufWritePre *.css :%s/\s\+$//e 
  autocmd BufWritePre *.sass :%s/\s\+$//e 
  autocmd BufWritePre *.scss :%s/\s\+$//e 
  autocmd BufWritePre *.php :%s/\s\+$//e 
  autocmd BufWritePre *.html :%s/\s\+$//e 
  autocmd BufWritePre *.py :%s/j\s\+$//e 
augroup END

nnoremap <leader>pv :Ex<CR>
