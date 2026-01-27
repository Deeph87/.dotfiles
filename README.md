## My dotfiles

### Install GNU stow
Windows (git bash) :   
Download a binary runable with *git bash* on the official GNU stow FTP : https://ftp.gnu.org/gnu/stow/
> [!WARNING]
>  For Windows open a terminal in admin mode and excute the following command before stowing or add directly this alias in your ~/.bashrc file
>  ```bash
>  alias stow='MSYS="winsymlinks:nativestrict" stow'
>  ```  

ArchLinux : 
```bash
sudo pacman -Syu stow
```

### bash
Add bash personnal configuration
```bash
stow --dir ~/.dotfiles --target ~ bash
```

### git
Add git config
```bash
stow --dir ~/.dotfiles --target ~ git
```

### starship
Add terminal prompt customization
```bash
stow --dir ~/.dotfiles --target ~ starship
```

### ghostty
Add ghostty configuration
```bash
stow --dir ~/.dotfiles --target ~ ghostty
```

### nvim
Add nvim config
```bash
stow --dir ~/.dotfiles --target ~ nvim
```

### tmux
Add tmux config
```bash
stow --dir ~/.dotfiles --target ~ tmux
```
### zed
Add zed config
```bash
stow --dir ~/.dotfiles --target ~ zed
```

### Install script
```bash
./install.sh
```
