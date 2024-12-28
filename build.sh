#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Remove unnecessary base packages
rpm-ostree override remove atril firefox firefox-langpacks mousepad libmousepad0 ristretto
rpm-ostree install gnome-software zsh{-,autosuggestions,syntax-highlighting}
