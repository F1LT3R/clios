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
" Plug 'jistr/vim-nerdtree-tabs'
Plug 'ap/vim-buftabline'

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)l
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" JavaScript Plugins
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mgm702/vim-tabtastic'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim' 

" Writing
Plug 'reedes/vim-wordy'
Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()

let $FZF_DEFAULT_COMMAND = 'find . -printf "%P\\n"'
set laststatus=2

set hlsearch
set incsearch
set spell
set thesaurus+=~/.dotos/data/thesaurus.txt
set virtualedit=all

filetype plugin indent on
let g:markdown_folding=0
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

set number

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

map <C-n> :NERDTreeToggle<CR>
