set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
let g:python3_host_prog = '/opt/python361/bin/python3.6'
let g:deoplete#enable_at_startup = 1
