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
sudo dnf install java-21-openjdk golang python3 python3-pip -y

sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-base-tools
sudo dnf install libavcodec-freeworld

sudo dnf install timeshift -y
sudo dnf install ghostty
sudo dnf install alacritty
sudo dnf install fastfetch

sudo dnf install papirus-icon-theme
