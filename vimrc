set nocompatible        " avoid vi-compatible
filetype off            " force reloading *after* pathogen loaded
call pathogen#infect()  " load pathogen for isolated plugins
filetype plugin indent on " load indent filetype

let mapleader = "," " comma for custom key

" <leader>h and <leader>v for split/vsplit
nmap <silent> <leader>h  :split<cr>
nmap <silent> <leader>v  :vsplit<cr>

set hidden " open new files without haveng to save or undo
set nowrap " no wrappin on line that exceeds width on screen
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set number " number per line
set showmatch
set autoindent      " copy indent from previous line
set tabstop=4       " a default tab is four spaces
set shiftwidth=4    " number of spaces to use for autoindenting
set shiftround      " tab to multiple of shoftwidth, rather than just add spaces.
set ignorecase      " ignore case when arching
set smartcase       " ignore case if search pattern is all lowercase,
                    " case-sensitive otherwise.
set smarttab        " allow <bs> to delet complete tab
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set undolevels=1000 " use many levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class " ignore files
set title           " change the terminal's title
set visualbell      " don't beep
set noerrorbells    " don't beep
set nobackup        " no backup files

" set colorscheme
set t_Co=256
if &t_Co >= 256 || has("gui_running")
"    colorscheme mustang
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"

colorscheme solarized
endif
if &t_Co > 2 || has("gui_running")
    syntax on 
endif

" avoid flashing and beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" highlight withespaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
" disable tab display on django template,php,html,php and xml
autocmd filetype djangohtml,php,html,xml set listchars-=tab:>.

" paste mode
set pastetoggle=<F4>

" key binding for :
nnoremap º :

" clear highlighting
nmap <silent> <leader>/ :nohlsearch<CR>

" sudo in case forgotten
cmap w!! w !sudo tee % >/dev/null

" CTRL-P file finder plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" tagbar key binding
nnoremap <F3> :TagbarToggle<CR>
let g:tagbar_usearrows = 1
