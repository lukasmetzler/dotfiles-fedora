#!/bin/bash

sudo dnf install fira-code-fonts -y

sudo dnf install gnome-tweaks gnome-shell-extension-manager -y

sudo dnf install podman podman-docker buildah -y


flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

FLATPAK_APPS=(
    com.visualstudio.code
    com.spotify.Client
    com.discordapp.Discord
    md.obsidian.Obsidian
    io.dbeaver.DBeaverCommunity
    com.github.btop.btop
    com.github.ghostty.ghostty
    com.mattjakeman.ExtensionManager 
)

for app in "${FLATPAK_APPS[@]}"; do
    flatpak install --user flathub "$app" -y --noninteractive
done
