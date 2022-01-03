"    sSSs      .S  sdSS_SSSSSSbs  
"  d%%SP     .SS  YSSS~S%SSSSSP  
" d%S'       S%S       S%S       
" S%S        S%S       S%S       
" S&S        S&S       S&S       
" S&S        S&S       S&S       
" S&S        S&S       S&S       
" S&S        S&S       S&S       
" S*b        d*S       S*S       
" S*S.      .S*S       S*S       
"  SSSbs  sdSSS        S*S       
"   YSSP  YSSY         S*S       
"                      SP        
"                      Y         

" -----------------------------------------
"  General Settings
"  ----------------------------------------
set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set signcolumn=yes:2
set relativenumber
set number
set termguicolors
set undofile
set spell
set title
set ignorecase
set smartcase
set nowrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set exrc
set backup
set backupdir=~/.local/share/nvim/backup//
set updatetime=300
set redrawtime=1000
"  ----------------------------------------
"  Keymaps
"  ----------------------------------------
let mapleader = "\<space>"

nmap <leader>ve :tabedit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>
nmap <leader>vc :tabedit ~/.config/nvim/coc-settings.json<cr>


nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<CR>

map gf :edit <cfile><cr>

vnoremap < <gv
vnoremap > >gv

vnoremap y myy`y
vnoremap Y myY`y

" When text is wrapped, move by terminal rows, not lines, unless a count is provided
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Paste replace visual selection without copying it
vnoremap <leader>p "_dP

" Make Y behave like the other capitals
nnoremap Y y$
"
" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Open the current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

" Quickly exit out or insert mode
imap jj <esc>

" Insert ; or , at end of line easily
nnoremap ;; A;<esc>
nnoremap ,, A,<esc>

cmap w!! %!sudo tee > /dev/null %

"  ----------------------------------------
"  Plugins
"  ----------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/context-commentstring.vim
source ~/.config/nvim/plugins/dispatch.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/emmet.vim
source ~/.config/nvim/plugins/eunuch.vim
source ~/.config/nvim/plugins/exchange.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/harpoon.vim
source ~/.config/nvim/plugins/heritage.vim
source ~/.config/nvim/plugins/lion.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/pasta.vim
source ~/.config/nvim/plugins/peekaboo.vim
source ~/.config/nvim/plugins/phpactor.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/quickscope.vim
source ~/.config/nvim/plugins/repeat.vim
source ~/.config/nvim/plugins/rooter.vim
source ~/.config/nvim/plugins/sayonara.vim
source ~/.config/nvim/plugins/splitjoin.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/targets.vim
source ~/.config/nvim/plugins/unimpaired.vim
source ~/.config/nvim/plugins/test.vim
source ~/.config/nvim/plugins/which-key.vim

call plug#end()
doautocmd User PlugLoaded

"--------------------------------------------------------------------------
" Miscellaneous
"--------------------------------------------------------------------------

augroup FileTypeOverrides
    autocmd!
    " Use '//' instead of '/* */' comments
    autocmd FileType php setlocal commentstring=//%s
    autocmd TermOpen * setlocal nospell
augroup END
