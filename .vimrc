"# ##############
"# Vundle configurations
"# https://github.com/VundleVim/Vundle.vim
"# ##############

"## option: nocompatible
"## references: https://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible              " be iMproved, required

"## command: filetype
"## To enable file type detection, use this command in your vimrc:
"##	:filetype on
"## Each time a new or existing file is edited, Vim will try to recognize the type
"## of the file and set the 'filetype' option.  This will trigger the FileType
"## event, which can be used to set the syntax highlighting, set options, etc.
"## referece: http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype off                   " required

" set the runtime path to include Vundle and initialize
"" linux
"" set rtp+=~/.vim/bundle/Vundle.vim 
"" call vundle#begin()
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"# ##############
"# Vundle Plugins
"# ##############

Plugin 'sjl/badwolf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

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

"# ##############
" Colors {{{
syntax enable           " enable syntax processing
colorscheme badwolf
set termguicolors
" }}}

"""""""""""""""""

" number of visual spaces per TAB. On existing documents with tabs, how to
" show them visually. 
set tabstop=4            

" number of spaces in tab when editing
set softtabstop=4        

" convert tabs to spaces when pressing tab.
set expandtab

""""""""""""""""""

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight curren line
set cursorline
