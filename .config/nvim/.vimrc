set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'Shougo/deoplete.nvim'
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview=1
set foldmethod=manual
set foldlevel=100

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2 softtabstop=2 shiftwidth=2

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let python_highlight_all=1
syntax on

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

let g:airline#extensions#ale#enabled = 1
