#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

source /usr/share/git/git-prompt.sh # Allows for the __git_ps1 function

function __new_line_fail {
	if [[ $? -eq 0 ]] then
		printf "\033[1;32m󱞪"
	else 
		printf "\033[1;31m󱞪"
	fi
}

# SPECIAL CHARACTERS

# Colour Codes
GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
RED="\[\033[1;31m\]"
END_CHAR="\[\033[0m\]"

# Icons
GIT_ICON="\[\]"
NEWLINE_ICON="\[󱞪\]"

PS1="${GREEN}\u " # Set username to green
PS1+="${BLUE}\w" # Set working directory to blue
PS1+="${RED}\$(__git_ps1 ' [ %s ${GIT_ICON} ]')\n " # If on branch add a space and branch name in red
PS1+="\[\$(__new_line_fail)\]" # Changes color of return icon to red if command fails, has to be escaped to stop line overflow issue
PS1+=" ${END_CHAR}" # Newline and icon then ResEt the prompt 

