set nocompatible              " be iMproved, required
filetype off                  " requiredsyntax enable

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'jscs-dev/node-jscs'
Plugin 'valloric/youcompleteme'
Plugin 'fatih/vim-go'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set autowrite "all some : commands to save file before running
set autoindent
set tabstop=4
set softtabstop=4
set colorcolumn=100
set noexpandtab
set shiftwidth=4
set backspace=indent,eol,start
set noswapfile
set nowrap
syntax enable
set background=dark
colorscheme solarized

"NERDTree settings
:command! NT NERDTreeToggle
let NERDTreeShowHidden=1

"linter settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers=['jscs']

"javascript specific
autocmd Filetype javascript setlocal shiftwidth=2 softtabstop=2 expandtab

"octave specific
autocmd BufNewFile,BufRead *.m map <buffer> <C-n> :w <CR> :execute ":!octave --no-gui --eval \"submit(); pause\"" <CR> 
autocmd BufNewFile,BufRead *.m map <buffer> <C-b> :w <CR> :execute ":!octave --no-gui %" <CR>

"go specific
"autocmd BufNewFile,BufRead *.go map <buffer> <C-b> :GoBuild <CR>
"autocmd BufNewFile,BufRead *.go map <buffer> <C-r> :GoRun <CR>
"autocmd BufNewFile,BufRead *.go map <buffer> <C-t> :GoTest <CR>
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1

"vimrc specific
"autocmd BufNewFile,BufRead *.vimrc map <buffer> <C-b> :w <CR> :source % <CR> :PluginInstall <CR> 

