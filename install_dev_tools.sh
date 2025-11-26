#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

NVM_VERSION="v0.39.7"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
npm install -g typescript npm pnpm

sudo dnf group install "Development Tools" -y
sudo dnf install java-21-openjdk golang python3 python3-pip -y # Added python3 & pip

sudo dnf install timeshift -y