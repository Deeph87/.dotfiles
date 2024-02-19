## My dotfiles

### Vim
```bash
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
``` 

### Neovim
```bash
ln -s ~/dotfiles/neovim ~/.config/nvim
```

### Starship
```bash
# Macos 
brew install starship
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/MartianMono.zip

# Archlinux 
pacman -S starship ttf-martian-mono-nerd

# both
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship/starship.toml
eval "$(starship init zsh)"
```

### Alacritty
```bash
# Macos
brew install --cask alacritty

# Archlinux
pacman -S alacritty

# both
mkdir ~/.config/alacritty
ln -s ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s ~/dotfiles/alacritty/dracula.toml ~/.config/alacritty/dracula.toml
```

### KDE
- Keyboard: 
	- delay: 300ms
	- speed: 50r/s
