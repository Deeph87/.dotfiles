source="$HOME/dotfiles/alacritty/alacritty.toml"
target="$HOME/.config/alacritty.toml"
command="ln -s $source $target"
echo $command
eval $command

