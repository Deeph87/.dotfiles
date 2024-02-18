## My dotfiles

### Vim

```bash
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
``` 

### Neovim
```bash
ln -s ~/dotfiles/neovim ~/.config/nvim
```

### Terminal emulator

```bash
# Install MartianMono Nerd Font: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/MartianMono.zip
pacman -S ttf-martian-mono-nerd alacritty zsh starship
eval "$(starship init zsh)"
ln -s ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s ~/dotfiles/alacritty/dracula.toml ~/.config/alacritty/dracula.toml
```

### KDE
- Keyboard: 
	- delay: 300ms
	- speed: 50r/s
