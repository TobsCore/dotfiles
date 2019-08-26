" Sets how many lines of history VIM has to remember
set history=500

" Don't redraw while executing macros (good performance config)
set lazyredraw 
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme ron
catch
endtry

set background=dark
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Remap VIM 0 to first non-blank character
map 0 ^

""""""""""
" Plugins
""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()
