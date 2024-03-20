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

### .env
```bash
ln -s $HOME/dotfiles/.env ~$home/.env
echo "export $(envsubst < .env)" >> .zshrc
```

### KDE
- Keyboard: 
	- delay: 300ms
	- speed: 50r/s

# Apprentissage Arch Linux + WM

Technos : 
- Distribution Linux : Arch Linux
- Windows manager : HyprLand
- Serveur d'affichage : Wayland
- Bar de status : Waybar

## Notions
- IDLE deamon : Service qui permet de notifier un état du système par rapport à
l'activité de l'utilisateur et de porter des actions en conséquence. Par
exemple, gérer la mise en veille automatique du système et la reprise de mise en
veille (baisse de luminosité écran et clavier, eteindre l'ecran, locker la
session, mise en veille, réouverture etc ...).

- Login Manager ou Display Manager : Ici c'est sddm, mais il en existe d'autres.
Ly intéressant. A essayer.

- Tray : Zone de la status bar où certains services sont ancrés. (Wifi applet,
  discord, deezer, etc ...)

- Paquet orphelin : Dépendances qui n'ont plus de paquet parent

- Pacnew : Mise à jour du fichier de configuration d'un paquet mis à jour. Celà
  permet afin d'éviter d'écraser la configuration spécifique de l'utilisateur. Il
  faut traiter la différence pour appliquer les mises à jour de configuration.

- Pacsave : Sauvegarde de la configuration d'un paquet supprimé sans le flag de
  suppression adequat (-n --nosave)

## Paquets

### Pacman

```bash
sudo pacman -S \
hyprland \
waybar \
git \
nvim \
networkmanager \
network-manager-applet \
fastfetch \
btop \
pacman-contrib \
fzf \
discord \
ripgrep \
fd
```

### AUR
```bash
paru -S 
deezer
```

# Reste à explorer : 
- PipeWire
- Faire fonctionner l'IDLE
- Lock Screen
- Bluetooth
- MultiMoniteur
