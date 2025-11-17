## My dotfiles

### Bash
> [!WARNING]
>  For Windows open a terminal in admin mode and excute the following command before stowing
>  ```bash
>  alias stow='MSYS="winsymlinks:nativestrict" stow'
>  ```
Add bash personnal configuration
```bash
stow --dir ~/.dotfiles --target ~ bash
```

### Starship
Add terminal prompt customization
```bash
stow --dir ~/.dotfiles --target ~ starship
```
