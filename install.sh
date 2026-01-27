#!/bin/bash

for config in bash git starship ghostty nvim tmux zed; do
    echo "Installing $config config ..."
    stow --dir="$HOME/.dotfiles" --target="$HOME" "$config"
done

echo "Done!"
