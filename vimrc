call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'vim-scripts/SyntaxComplete'
"Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
"Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'jelera/vim-javascript-syntax'

call plug#end()

syntax on                   " turn on syntax highlighting
set autoread                " auto reload buffer when file modified externally
set clipboard=unnamed       " yank and paste using system clipboard
set encoding=utf-8          " default character encoding
set nowrap                  " do not wrap text
"set number                  " show line numbers
set scrolloff=3             " keep minimal number of lines above/below cursor
set showcmd                 " show command line at bottom of screen
set sidescroll=3            " scroll sideways 3 characters at a time
"set visualbell              " use visual bell instead of beeping
set backspace=2             " make backspace behave normally
set expandtab               " insert tabs as spaces
set shiftwidth=2            " number of spaces for auto indent and line shift
set smarttab                " <BS> deletes a shiftwidth worth of space
set softtabstop=2           " number of spaces pressing <Tab> counts for
set tabstop=2               " number of spaces a <Tab> in the file counts for
set showmatch               " briefly jump to matching bracket
set incsearch               " highlight matches while typing search
set hlsearch                " keep previous search highlighted

" Move between vertical splits easier
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

map <Leader>n :NERDTreeToggle<CR>

" Automatically wrap text while typing in Markdown and rST documents
autocmd! BufNewFile,BufReadPost *.md set filetype=markdown
autocmd! Filetype markdown,rst set textwidth=79
