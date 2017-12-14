"# ##############
" Vundle configurations
" https://github.com/VundleVim/Vundle.vim
" 
" In order for Vundle to work, we first need to install it via:
" `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
" ##############

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

" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" https://draculatheme.com/vim/
Plugin 'dracula/vim'

" https://github.com/leafgarland/typescript-vim
Plugin 'leafgarland/typescript-vim'

" https://github.com/Quramy/tsuquyomi
Plugin 'quramy/tsuquyomi'

" https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
Plugin 'valloric/youcompleteme'

" https://github.com/junegunn/fzf.vim
Plugin 'junegunn/fzf'

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
" colorscheme badwolf
colorscheme dracula
set termguicolors
" }}}

"""""""""""""""""

" number of visual spaces per TAB. On existing documents with tabs, how to
" show them visually. 
set tabstop=2            

" number of spaces in tab when editing
set softtabstop=2        

" convert tabs to spaces when pressing tab.
set expandtab

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=2

""""""""""""""""""

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight curren line
set cursorline

""""""""""""""""""
" NerdTree
""""""""""""""""""

" Open nerdtree automatically when vim starts up
" autocmd vimenter * NERDTree

" Open nerdtree automatically when vim starts up and no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <Space>n :NERDTreeToggle<CR>

" Auto-close nerdtree when opening a file in new tab
" https://stackoverflow.com/questions/28632620/auto-close-nerdtree-when-opening-file-in-new-tab
let NERDTreeQuitOnOpen=1

" *****************
" Key Map
" *****************

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open fuzzy finder
nnoremap <Space>f :FZF<CR>

"	pastetoggle - When non-empty, specifies the key sequence that toggles the 'paste'
"	option.  This is like specifying a mapping: >
"
" paste - Put Vim in Paste mode.  This is useful if you want to cut or copy
"	some text from one window and paste it in Vim.  This will avoid
"	unexpected effects.
"
" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=<F2>

" ****************
" You Complete Me Plugin
" """"""""""""""""
"
" For debugging
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'
"
" https://github.com/Valloric/YouCompleteMe#full-installation-guide
let g:ycm_server_python_interpreter = '/usr/bin/python'

" ******************************
" Reference
" ******************************

" http://vimdoc.sourceforge.net/htmldoc/autocmd.html

" # autocmd
" An autocommand is a command that is executed automatically in response to some
" event, such as a file being read or written or a buffer change.

"  The "*" is a pattern to match with the file name.  In this case it matches all files.

" winnr([{arg}])	
" The result is a Number, which is the number of the current window.  The top window has number 1.  When the optional argument is "$", the number of the last window is returned (the window count). > let window_count = winnr('$')

" # nnoremap - normal, none recursive, key mapping

"""""""""""""""""""
" # Functions
"""""""""""""""""""

" ## argc()
" The result is the number of files in the argument list of the current window.  See arglist.

"""""""""""""""""""
" # Events
"""""""""""""""""""

" ## BufEnter
" After entering a buffer. Useful for setting options for a file type.  Also
" executed when starting to edit a buffer, after the BufReadPost autocommands.

" ## StdinReadPre
" Before reading from stdin into the buffer. Only used when the "-" argument was used when Vim was started 
"
" ## VimEnter
" After doing all the startup stuff, including loading .vimrc files, executing the "-c cmd" arguments, creating all windows and loading the buffers in them.
