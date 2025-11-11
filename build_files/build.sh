#!/bin/bash

set -ouex pipefail

dnf5 -y copr enable avengemedia/dms
dnf5 -y copr enable solopasha/hyprland

dnf5 install -y tmux ruby gcc cmake
dnf5 install -y libavcodec-freeworld --allowerasing
dnf5 install -y niri dms

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

systemctl enable podman.socket
