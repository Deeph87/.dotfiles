#!/bin/bash

# Config
source="$HOME/dotfiles/zsh/.zshrc"
target="$HOME/.zshrc"

if [ -f $target ]; then
    rm $target
fi

command="ln -s $source $target"
echo $command
eval $command

# zsh syntax highlighting
ZSH_SYNTAX_HIGHLIGHTING_PATH="$HOME/zsh-syntax-highlighting"
if [ ! -d ZSH_SYNTAX_HIGHLIGHTING_PATH ]; then
	command="git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting"
	echo $command
	eval $command
fi
command="source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
echo $command
eval $command

