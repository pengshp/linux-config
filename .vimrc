" ~/.vim/vimrc
"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"


set clipboard=unnamedplus

set number relativenumber
set numberwidth=4
set noshowmode
set showcmd

set mouse=a
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
set helplang=cn

filetype indent on
filetype plugin on

syntax enable

set autoindent
set smartindent
set nocompatible

set tabstop=4
set shiftwidth=4
set expandtab " Use spaces instead of tabs.
set laststatus=2
set showtabline=1
set cursorline
set wrap
set wildmenu
" Enable autocompletion
set wildmode=longest,list,full

set splitright

" leader \ timeout
set hidden
set timeoutlen=1000

" Search
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz

set noerrorbells

let mapleader = "\<Space>"

" Replace all is alais to S
nnoremap S :%s///g <Left><Left>

"Reload vimrc
nnoremap <leader>r :source ~/.vim/vimrc<CR>

" Automatically deletes all trailing whitespace and newlines
" at end of file on save. & reset cursor position
 	autocmd BufWritePre * let currPos = getpos(".")
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
	autocmd BufWritePre *.[ch] %s/\%$/\r/e
  	autocmd BufWritePre * cal cursor(currPos[1], currPos[2])

"============================================================
" ===
" ===vim-plug
" ===
call plug#begin('~/.vim/plugged')

Plug 'mcchrish/nnn.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'EdenEast/nightfox.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'

Plug 'vim/killersheep'
call plug#end()

" -----------------------------------------------------------
" vim theme
"
"lightline theme
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

set background=dark
set termguicolors
colorscheme nordfox

autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

" ---------------------------------------------------------
" fzf.vim
let g:fzf_command_prefix = 'Fzf'

nnoremap <leader>f :FzfFiles<CR>
nnoremap <leader>g :FzfGFiles<CR>
nnoremap <leader>b :FzfBuffers<CR>

"nerdcomment
imap <C-c> <plug>NERDCommenterInsert
"nmap <silent> <C->NERDCommenterToggle
"vmap <silent> <C-/>NERDCommenterToggle<CR>gv


" ==========================================================
" === nnn.vim
" === :h nnn
let $NNN_TRASH=1
" Disable default mappings
let g:nnn#set_default_mappings = 0

" Set custom mappings
nnoremap <silent> <leader>nn :NnnPicker<CR>

" Start n³ in the current file's directory
nnoremap <leader>n :NnnPicker %:p:h<CR>

" Opens the n³ window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Or pass a dictionary with window size
let g:nnn#layout = { 'left': '~20%' } " or right, up, down

" If a file is specified, start NnnExplorer and move the cursor to the file window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() > 0 || exists("s:std_in") | call nnn#explorer() | wincmd p | stopinsert | endif

" Exit Vim if NnnExplorer is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && &filetype ==# 'nnn' | quit! | endif

" Close the tab if NnnExplorer is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && &filetype ==# 'nnn' | quit! | endif

let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-s>': 'split',
      \ '<c-v>': 'vsplit' }
