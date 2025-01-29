#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

source /usr/share/git/git-prompt.sh

PS1='\[\033[1;32m\][\u@\h]:\[\033[1;34m\]\w\[\033[0m\] \[\033[1;31m\]$(__git_ps1 "(%s) ")\[\033[1;37m\]$ '
#e725
