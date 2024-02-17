source="$HOME/dotfiles/starship/starship.toml"
target="$HOME/.config/starship.toml"
command="ln -s $source $target"
echo $command
eval $command

