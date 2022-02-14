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

Plugin 'ivy/vim-ginkgo'

Plugin 'stephpy/vim-php-cs-fixer'
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plugin 'ryanoasis/vim-devicons'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'tpope/vim-commentary'
" Plug 'jiangmiao/auto-pairs' - Replaced by coc.pairs
Plugin 'christoomey/vim-tmux-runner'
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plugin 'vim/killersheep'
Plugin 'neovim/nvim-lspconfig'
Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'glepnir/lspsaga.nvim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plugin 'rhysd/vim-grammarous'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'leafgarland/typescript-vim'
"All of your Plugins must be added before the following line
call vundle#end() " required

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
" Coc extensions
let g:coc_global_extensions = get(g:, 'coc_global_extensions', ['coc-snippets', 'coc-pairs', 'coc-phpls', 'coc-eslint', 'coc-go', 'coc-tsserver', 'coc-prettier'])
""""

syntax on

let base16colorspace=256
" colorscheme base16-gruvbox-dark-medium
colorscheme base16-solarized-dark

set colorcolumn=81
highlight ColorColumn ctermbg=blue
set softtabstop=4
set bs=2

autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal softtabstop=2

autocmd FileType php setlocal shiftwidth=4
autocmd FileType php setlocal softtabstop=4
autocmd FileType php setlocal tabstop=4
autocmd FileType php setlocal expandtab

autocmd FileType json setlocal shiftwidth=4
autocmd FileType json setlocal softtabstop=4
autocmd FileType json setlocal tabstop=4
autocmd FileType json setlocal expandtab

autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType javascript setlocal softtabstop=2
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal expandtab

autocmd FileType typescript setlocal shiftwidth=2
autocmd FileType typescript setlocal softtabstop=2
autocmd FileType typescript setlocal tabstop=2
autocmd FileType typescript setlocal expandtab

"############## Go configs
autocmd FileType go setlocal shiftwidth=4
autocmd FileType go setlocal tabstop=4
let g:go_fmt_command = "goimports"
let g:go_def_mode="gopls"

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
" let g:airline_theme='dracula'

" Line number
" :set number
" :set nu
set relativenumber
set rnu
highlight LineNr ctermfg=blue

" Togle FZF
" set rtp+=~/.fzf
map <C-p> :FZF<CR>
"

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
" nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
" nnoremap <leader>= :wincmd =<cr>
nnoremap <esc> :nohlsearch<return><esc>

" coc bindings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)

" Trigger emmet only for HTML and CSS
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" Fold
set foldmethod=manual
" set nofoldenable
