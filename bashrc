#!/bin/bash
export BASHDIR="$HOME/.local/bash"
export USERSH="$HOME/.usersh"
export HISTFILE="$HOME/.bash_history"
export HISTFILESIZE=10000

shopt -s histappend
export PROMPT_COMMAND="history -a"

source "$BASHDIR/functions"
source "$USERSH/bashrc"