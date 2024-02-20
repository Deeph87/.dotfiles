## My dotfiles

### Neovim
```bash
# MACOS
brew install neovim

# ARCHLINUX
sudo pacman -S neovim 

ln -s ~/dotfiles/neovim ~/.config/nvim
```

### Starship
```bash
# MACOS 
brew install starship && \
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/MartianMono.zip
&& \
ln -s ~/dotfiles/starship/starship-macos.toml ~/.config/starship.toml

# ARCHLINUX 
sudo pacman -S starship ttf-martian-mono-nerd && \
ln -s ~/dotfiles/starship/starship-archlinux.toml ~/.config/starship.toml

# both
eval "$(starship init zsh)"
```

### Alacritty
```bash
# MACOS
brew install --cask alacritty
```
```bash
# ARCHLINUX
sudo pacman -S alacritty
```
```bash
# both
mkdir ~/.config/alacritty && \
ln -s ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml &&
\
ln -s ~/dotfiles/alacritty/dracula.toml ~/.config/alacritty/dracula.toml
```

### Zsh
```bash
# MACOS
brew install zsh-syntax-highlighting && \
ln -s ~/dotfiles/zsh/.zshrc-macos ~/.zshrc
```
```bash
# ARCHLINUX
sudo pacman -S zsh-syntax-highlighting && \
ln -s ~/dotfiles/zsh/.zshrc-archlinux ~/.zshrc
```

### Tmux
```bash
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

### KDE
- Keyboard: 
	- delay: 300ms
	- speed: 50r/s
