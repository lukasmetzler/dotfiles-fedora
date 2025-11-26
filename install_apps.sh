#!/bin/bash
sudo dnf install gnome-tweaks -y || true

flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

FLATPAK_APPS=(
    com.visualstudio.code
    com.spotify.Client
    com.discordapp.Discord
    md.obsidian.Obsidian
    io.dbeaver.DBeaverCommunity
    com.mattjakeman.ExtensionManager 
)

for app in "${FLATPAK_APPS[@]}"; do
    flatpak install --user flathub "$app" -y --noninteractive
done
