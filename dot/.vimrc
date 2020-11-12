" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" JavaScript Plugins
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'

" Writing
Plug 'reedes/vim-wordy'
Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()

set hlsearch
set incsearch
set spell
set thesaurus+=~/.dotos/data/thesaurus.txt
set virtualedit=all

filetype plugin indent on
filetype plugin indent on
let g:markdown_folding=1
set nowrap
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell spelllang=en_us
set complete+=kspell
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi SpellBad cterm=underline ctermbg=1
hi SpellLocal cterm=underline ctermbg=1
hi SpellRare cterm=underline ctermbg=1
hi SpellCap cterm=underline ctermbg=1

let mapleader = ","
set ttimeout
set ttimeoutlen=0
nnoremap <C-p> :Files<Cr>

:hi SpecialKey ctermfg=8
:set listchars=eol:¬,tab:⠐⠐⠕,trail:~,extends:>,precedes:<,space:⠐
:hi NonText ctermfg=8
:set list
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
