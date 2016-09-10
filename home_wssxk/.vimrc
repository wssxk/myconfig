set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just 
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local 
" cache
" :PluginClean      - confirms removal of unused plugins; append `!` to 
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"YCM config
autocmd InsertLeave * if pumvisible() == 0|pclose|endif 
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py' 
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_comments_and_strings = 0 
let g:ycm_min_num_of_chars_for_completion= 2 
let g:ycm_seed_identifiers_with_syntax= 1 


"NERDtree
"map :silent! NERDTreeToggle
map <F2> :NERDTreeToggle<CR>
map <C-F2> :NERDTreeFind<CR>
let NERDTreeChDirMode=2 "选中root即设置为当前目录
let NERDTreeQuitOnOpen=1 "打开文件时关闭树
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头 0传统+-|号



syntax enable
syntax on
set nu
set fdm=syntax
set foldcolumn=1
set ts=4
