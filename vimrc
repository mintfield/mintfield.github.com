if v:progname =~? "evim"
  finish
endif

"if has("vms")
"  set nobackup
"else
"  set backup
"endif

language en_US.utf8

set nocompatible
set nu
set ruler
set cindent
set autoindent
set smartindent
set incsearch
set showcmd
set showmode
set showmatch
set ignorecase
set incsearch
set hidden
set mouse=a
syntax on
set hlsearch
set laststatus=2
set incsearch
set backspace=2

let g:Powerline_symbols = 'fancy'
set guifont=malgun-Powerline.ttf

set t_Co=256

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'The-NERD-tree'
Bundle 'cscope.vim'
Bundle 'cscope_plus.vim'
Bundle 'cscope-menu'
Bundle 'autoload_cscope.vim'
Bundle 'ctags.vim'
Bundle 'taglist.vim'
Bundle 'Source-Explorer-srcexpl.vim'
Bundle 'AutoComplPop'
Bundle 'snipMate'
Bundle 'xmledit'
Bundle 'ZenCoding.vim'
Bundle 'hex.vim'
Bundle 'hexHighlight.vim'
Bundle 'bufexplorer.zip'
Bundle 'Color-Scheme-Explorer'
Bundle 'VimOutliner'
Bundle 'python_check_syntax.vim'
Bundle 'javaDoc.vim'
Bundle 'java_apidoc.vim'
Bundle 'Screen-vim---gnu-screentmux'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
