# my-dotfiles

Organized my _dotfiles_!!

## Plugins and Addons

### Themes

| ambient | theme |
| --- | --- |
| shell | [spaceship](https://github.com/spaceship-prompt/spaceship-prompt) |
| tmux | [dracula](https://draculatheme.com/tmux) |
| vim | wip |

### Command Line Tools

- [exa](https://github.com/ogham/exa)
- [bat](https://github.com/sharkdp/bat)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [thefuck](https://github.com/nvbn/thefuck)

### oh-my-zsh plugins

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

###

## Installation

For the installation you **will need**:

- `zsh` using `oh-my-zsh`
- Install [spaceship](https://github.com/spaceship-prompt/spaceship-prompt)
    - use `git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1`
    - and `ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`
- **Only for Mac-OS**
    - `homebrew`

Once the prerequisites are met you can run the installation file:

| platform | file |
| --- | --- |
| Mac-OS | MacOsInstall.sh |
| Debian | DebianInstall.sh |

Choose what you want to install:

| flag | installs |
| --- | --- |
| `-s` | zsh plugins and theme |
| `-t` | tmux plugins and theme |
| `-v` | vim plugins and theme | 




