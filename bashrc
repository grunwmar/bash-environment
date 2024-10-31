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

if [[ -n $EDITOR ]]; then
  export EDITOR="nano"
fi

source "$BASHDIR/functions"
source "$BASHDIR/aliases"

if [[ -f $USERSH/aliases ]]; then
  source $USERSH/aliases
fi

clear
source "$USERSH/bashrc"