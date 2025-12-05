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

### ghostty
Add terminal prompt customization
```bash
sdsd
```

### nvim
Add nvim config
```bash
stow --dir ~/.dotfiles --target ~ nvim
git clone git@github.com:nvim-lua/plenary.nvim.git ~/.config/nvim/pack/vendor/start/plenary.nvim
git clone git@github.com:nvim-telescope/telescope.nvim.git ~/.config/nvim/pack/vendor/start/telescope.nvim
git clone git@github.com:nvim-lualine/lualine.nvim.git ~/.config/nvim/pack/vendor/start/lualine.nvim
git clone git@github.com:catppuccin/nvim.git ~/.config/nvim/pack/vendor/start/catppuccin.nvim
# In nvim, load all tags
:helptags ALL
```
