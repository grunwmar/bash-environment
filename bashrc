#!/bin/bash
export BASHDIR="$HOME/.local/bash"
export USERSH="$HOME/.usersh"

if [[ -d "$USERSH" ]]; then
  export HISTFILE="$USERSH/bash_history"
else
  export HISTFILE="$HOME/.bash_history"
fi

export HISTFILESIZE=10000

shopt -s histappend
export PROMPT_COMMAND="history -a"

source "$BASHDIR/aliases"
source "$BASHDIR/functions"
source "$USERSH/bashrc"

clear

echo "User $(whoami) on $(hostname) at $(date "+%T [%Y %B %d]")"
echo ""