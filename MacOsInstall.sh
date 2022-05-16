SHELL=false
TMUX=false
VIM=false

while getopts ":stv" opt; do
    case ${opt} in
        s ) SHELL=true
            ;;
        t ) TMUX=true
            ;;
        v ) VIM=true
            ;;
        \? ) echo "Usage: ./MacOsInstall.sh [-s] [-t] [-v]"
            ;;
    esac
done

if $SHELL
then
    echo "Installing shell tools..."
    brew install thefuck
    brew install exa
    brew install bat
    brew install ripgrep
    brew install fzf
    $(brew --prefix)/opt/fzf/install
    brew install zoxide
    echo "Installing shell theme..."
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    echo "Setting up config directory..."
    mkdir -p ~/.zshrc.d/aliases
    cp ./dotfiles/aliases/* ~/.zshrc.d/aliases
fi
