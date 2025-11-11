#!/bin/bash

set -ouex pipefail

# System packages

dnf5 -y copr enable avengemedia/dms
dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable scottames/ghostty
dnf5 -y copr enable atim/starship

dnf5 install -y tmux ruby gcc cmake
dnf5 install -y niri 
dnf5 install -y swww waybar swaylock
dnf5 install -y lightdm lightdm-settings
dnf5 install -y nemo
dnf5 install -y ghostty
dnf5 install -y starship
dnf5 install -y croc obs-studio qt5ct qt6ct swaync fuzzel

# Flatpak packages
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub menu.kando.Kando io.github.kolunmi.Bazaar com.github.marhkb.Pods
systemctl enable lightdm.service
systemctl enable podman.socket
