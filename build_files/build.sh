#!/bin/bash

set -ouex pipefail

# System packages

dnf -y copr enable avengemedia/dms
dnf -y copr enable solopasha/hyprland
dnf -y copr enable scottames/ghostty
dnf -y copr enable atim/starship
dnf -y copr enable harryjph/fonts

dnf install -y tmux ruby gcc cmake
dnf install -y niri wlogout hyprlock
dnf install -y swww waybar swaylock
dnf install -y sddm
dnf install -y nemo
dnf install -y ghostty
dnf install -y starship
dnf install -y croc qt5ct qt6ct swaync fuzzel
dnf install -y pavucontrol 
dnf install -y jetbrains-mono-nerd-fonts
dnf install -y cava fastfetch bat
dnf install -y rsync

rsync -rvK /ctx/system_files/ /

# Flatpak packages
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub io.github.kolunmi.Bazaar # com.github.marhkb.Pods menu.kando.Kando
systemctl enable sddm.service
systemctl enable podman.socket
