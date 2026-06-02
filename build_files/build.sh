#!/bin/bash

set -ouex pipefail

### Install packages

dnf5 install -y fastfetch distrobox

# Cosmic Desktop Environment (official COPR from Ryan Brue / System76 team)
dnf5 -y copr enable ryanabx/cosmic-epoch
dnf5 -y install cosmic-desktop
dnf5 -y copr disable ryanabx/cosmic-epoch

# Steam + excellent hardware support (WiFi, Bluetooth, graphics, audio, etc.)
# already come from the Bazzite base. Flatpak is also ready.

systemctl enable podman.socket
