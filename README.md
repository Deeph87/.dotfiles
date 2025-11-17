## My dotfiles

### Bash
Add bash personnal configuration
```bash
stow --dir ~/.dotfiles --target ~ bash
```
> [!WARNING]
>  For Windows, excute the following command before stowing for bash
>  ```bash
>  alias stow='MSYS="winsymlinks:nativestrict" stow'
>  ```

### Starship
Add terminal prompt customization
```bash
stow --dir ~/.dotfiles --target ~ starship
```
