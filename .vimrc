" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
"
"
" Disable viminfo.
let skip_defaults_vim=1
set viminfo=""

" Keep 100 lines of command line history.
set history=100

" Use the OS clipboard by default (on versions compiled with `+clipboard`).
set clipboard=unnamed

" Enables a menu at the bottom of the vim/gvim window.
set wildmenu

" Always shot the statusline.
set laststatus=2

" 开启语法高亮
syntax on
" 检测文件类型
filetype on
" 设置在Vim中可以使用鼠标，防止终端无法拷贝
if has('mouse')
    set mouse-=a
endif
" 显示当前行号和列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前Vim模式
set showmode
" 显示行号
set number
" 设置tab宽度
set tabstop=4
" 智能自动缩进
"set smartindent
" 设置自动对齐空格数
set shiftwidth=4
" 设置编码方式
set encoding=utf-8
"
set helplang=cn
set shiftwidth=4
set softtabstop=4
set magic
set cursorline
set hlsearch
set incsearch
set autoindent


" vim-plug 
call plug#begin('~/.vim/plugged')

Plug 'mcchrish/nnn.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" https://github.com/vim-airline/vim-airline-themes
let g:airline_theme='onedark'
