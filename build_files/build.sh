#!/bin/bash

set -ouex pipefail

# Copy system files to filesystem
rsync -rvK /ctx/system_files/ /

# System packages

dnf5 -y copr enable avengemedia/dms
dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable scottames/ghostty
dnf5 -y copr enable atim/starship
dnf5 -y copr enable harryjph/fonts

dnf5 install -y tmux ruby gcc cmake
dnf5 install -y niri dms wlogout hyprlock
dnf5 install -y swww waybar swaylock
dnf5 install -y lightdm lightdm-settings
dnf5 install -y nemo
dnf5 install -y ghostty
dnf5 install -y starship
dnf5 install -y croc qt5ct qt6ct swaync fuzzel
dnf5 install -y pavucontrol 
dnf5 install -y jetbrains-mono-nerd-fonts
dnf5 install -y lf cava fastfetch bat

# Flatpak packages
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub io.github.kolunmi.Bazaar # com.github.marhkb.Pods menu.kando.Kando
systemctl enable lightdm.service
systemctl enable podman.socket
