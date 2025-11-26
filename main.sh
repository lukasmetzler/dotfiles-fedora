#!/bin/bash

BASEDIR=$(dirname "$0")
cd "$BASEDIR" || exit

sudo dnf install fwupd -y
sudo fwupdmgr refresh
sudo fwupdmgr update

sudo dnf upgrade --refresh -y
sudo dnf install curl wget git -y

chmod +x install_apps.sh install_dev_tools.sh

./install_apps.sh
./install_dev_tools.sh

sudo dnf install zsh -y
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp config/zsh/zshrc_template ~/.zshrc

cp config/git/gitconfig_template ~/.gitconfig



