#!/bin/bash

set -ouex pipefail

dnf5 -y copr enable avengemedia/dms
dnf5 -y copr enable solopasha/hyprland

dnf5 install -y tmux ruby gcc cmake
dnf5 install -y niri 
dnf5 install -y swww waybar swaylock
dnf5 install -y lightdm lightdm-settings

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

systemctl enable lightdm.service
systemctl enable podman.socket
