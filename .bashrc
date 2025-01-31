#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

source /usr/share/git/git-prompt.sh # Allows for the __git_ps1 function

# Colour configuration
GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
RED="\[\033[1;31m\]"
WHITE="\[\033[1;37m\]"
GIT_ICON="\[\]"
END_CHAR="\[\033[0m\]"


PS1="${GREEN}\u " # Set username to green
PS1+="${BLUE}\w" # Set working directory to blue
PS1+="${RED}\$(__git_ps1 ' [ %s ${GIT_ICON} ]')" # If on branch add a space and branch name in red
PS1+="${WHITE} $ ${END_CHAR}" # Reset the prompt 
