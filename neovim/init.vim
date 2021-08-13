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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'bmatcuk/stylelint-lsp'
Plug 'mhartington/formatter.nvim'
Plug 'itchyny/vim-qfedit'


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
" source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/chris.vimrc
source $HOME/.config/nvim/config/python.vimrc
" LUA
source $HOME/.config/nvim/config/general.lua
source $HOME/.config/nvim/lua/_telescope.lua
source $HOME/.config/nvim/lua/_formatter.lua
source $HOME/.config/nvim/plugin/netrw.vim
source $HOME/.config/nvim/plugin/set.vim
" PLUGINS
" source $HOME/.config/nvim/plugin/telescope.vim
 source $HOME/.config/nvim/plugin/_vsnip.vim


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

" --------
" Movement
" --------
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

"----------
" Folds
"----------
" Space open/closes folds
" noremap <space> za     


"--------
" Buffers
" -------
nnoremap <C-b>n :bn<CR>
nnoremap <C-b>p :bp<CR>


"-------
" ???
" ------
" Highligh last inserted text
nnoremap gV `[V`]

" Turn off highlight search
nnoremap <leader><space> :nohlsearch<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

inoremap jk <ESC>
inoremap kj <ESC> 

noremap ;; $a;<ESC>
noremap <LEADER>p "+p

" Enable folding with the spacebar
" nnoremap <space> za


cmap vime tabe $MYVIMRC
cmap sov so $MYVIMRC

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files({})<CR>

function! GetBufferList()
  redir =>buflist
  silent! ls!
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction

nmap <silent> <C-q> :call ToggleList("Quickfix List", 'c')<CR>
nmap <silent> <leader>q :call ToggleList("Quickfix List", 'c')<CR>
nmap <silent> <C-k> :cn<CR>zzzv
nmap <silent> <C-j> :cp<CR>zzzv
nmap <silent> <leader>k :ln<CR>
nmap <silent> <leader>j :lp<CR>
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'


