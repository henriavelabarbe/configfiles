#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='vim'
PS1='[\u@\h \W]\$ '
export PATH=~/.cabal/bin:$PATH
export TERM=rxvt-unicode-256color
eval `dircolors ~/.dir_colors`
