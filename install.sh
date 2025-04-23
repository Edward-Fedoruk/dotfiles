brew_install() {
    echo "\nInstalling $1"
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}

brew_install "stow"

stow ./

brew_install "neovim"
brew_install "nvm"

nvm install node

brew_install "lazygit"
brew_install "ripgrep"
brew_install "wezterm@nightly"

echo "\nInstalling omz"
if [ -e "$HOME/.oh-my-zsh" ]; then
    echo "omz is already installed"
else 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi