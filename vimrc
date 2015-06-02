call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'godlygeek/tabular'
Plug 'bling/vim-airline'
"Plug 'vim-scripts/SyntaxComplete'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'MarcWeber/vim-addon-local-vimrc'

" general syntax
Plug 'plasticboy/vim-markdown'
"Plug 'scrooloose/syntastic'

" javascript
"Plug 'jelera/vim-javascript-syntax'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
"Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-jdaddy'

call plug#end()

syntax on                   " turn on syntax highlighting
set autoread                " auto reload buffer when file modified externally
set clipboard=unnamed       " yank and paste using system clipboard
set encoding=utf-8          " default character encoding
set nowrap                  " do not wrap text
set number                  " show line numbers
set relativenumber          " show relative line numbers
set scrolloff=3             " keep minimal number of lines above/below cursor
set showcmd                 " show command line at bottom of screen
set sidescroll=3            " scroll sideways 3 characters at a time
set history=100             " command history
set undolevels=400          " undo history

" disable bell
set visualbell              " use visual bell instead of beeping
set t_vb = 
set visualbell t_vb= 
au GuiEnter * set visualbell t_vb= 

" disable backup/swap
"set nobackup
"set noswapfile

set backspace=2             " make backspace behave normally
set expandtab               " insert tabs as spaces
set shiftwidth=2            " number of spaces for auto indent and line shift
set smarttab                " <BS> deletes a shiftwidth worth of space
set softtabstop=2           " number of spaces pressing <Tab> counts for
set tabstop=2               " number of spaces a <Tab> in the file counts for
set showmatch               " briefly jump to matching bracket
set incsearch               " highlight matches while typing search
set hlsearch                " keep previous search highlighted
set textwidth=79            " wrap text after 79 chars

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0

" Move between vertical splits easier
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

map <Leader>n :NERDTreeToggle<CR>

" Automatically wrap text while typing in Markdown and rST documents
"autocmd! BufNewFile,BufReadPost *.md set filetype=markdown
"autocmd! Filetype markdown,rst set textwidth=79

" airline
let g:airline#extensions#whitespace#enabled = 0

" syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
