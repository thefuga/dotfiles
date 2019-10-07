set nocompatible "be iMproved, required
filetype off "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

Plugin 'tpope/vim-surround'

Plugin 'chriskempson/base16-vim'

Plugin 'mattn/emmet-vim'

"All of your Plugins must be added before the following line
call vundle#end() " required

" Vim Plug
call plug#begin()
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-runner'
call plug#end()

filetype plugin indent on  " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""
syntax on


let base16colorspace=256 
colorscheme base16-onedark
set colorcolumn=81
highlight ColorColumn ctermbg=magenta
set softtabstop=4
set bs=2

autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal softtabstop=2

autocmd FileType php setlocal shiftwidth=4
autocmd FileType php setlocal softtabstop=4


" Nerdtree config
map <C-\> :NERDTreeToggle<CR>

" Lightline colorscheme
" let g:lightline = {
"       \ 'colorscheme': 'solarized',
"       \ }

" Powerline
" let g:powerline_pycmd="py3"
let g:powerline_loaded = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='onedark'

" Line number
" :set number
" :set nu
set relativenumber
set rnu
highlight LineNr ctermfg=blue

" Togle FZF
set rtp+=~/.fzf
map <C-p> :FZF<CR>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
" nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
" nnoremap <leader>= :wincmd =<cr>

" Trigger emmet only for HTML and CSS
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

