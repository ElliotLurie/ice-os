#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Remove unnecessary base packages
rpm-ostree remove atril firefox mousepad pavucontrol ristretto
rpm-ostree install gnome-software zsh{-,autosuggestions,syntax-highlighting}
