"
" Syntax & File types
"

syntax enable         " Enable syntax highlighting
filetype on           " enable file type detection
filetype plugin on    " load plugins specific to file type
filetype indent on    " ... and indentation too

"
" Coloration
"

colorscheme jellybeans
set background=dark

if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
    set guifont=Monaco\ 16   "
endif

"
" Tabs & Indentation
"

set expandtab     " converts tabs to spaces
set autoindent    " automatically copy indentation from previous line
set smartindent   " indents one extra level according to current syntax
" indents with tab = 4 spaces
set tabstop=4
set shiftwidth=4
" fixme: should use softtabstop=4 instead of expandtab and setting tabstop

"
" Commands
"

command W w !sudo tee % > /dev/null