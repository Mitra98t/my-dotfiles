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
        \? ) echo "Usage: ./DebianInstall.sh [-s] [-t] [-v]"
            ;;
    esac
done

sudo apt update

if $SHELL
then
    echo "Installing shell tools..."
    sudo apt install exa
    sudo apt install bat
    sudo apt-get install ripgrep
    sudo apt-get install fzf
    # curl -sS https://webinstall.dev/zoxide | bash
    sudo apt install zoxide
    # sudo apt install python3-dev python3-pip python3-setuptools
    # pip3 install thefuck --user
    sudo apt install thefuck
    echo "Setting up config directory..."
    mkdir -p ~/.zshrc.d/aliases
    cp ./dotfiles/aliases/* ~/.zshrc.d/aliases
    mv .zshrc .zshrc.old
    cp ./dotfiles/zshrc.template ~/.zshrc
    echo "All shell suff installed!!\nRestarting shell!"
    sleep 3
    exec zsh
fi

if $TMUX
then
    echo "Installing tmux and plugins"
    sudo apt install tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo "Cloning configs"
    rm .tmux.conf
    cp ./dotfiles/tmux.conf.template ~/.tmux.conf
    echo "All tmux stuff installed!!\nReloading Tmux!"
    sleep 3
    tmux source-file ~/.tmux.conf
fi
