#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Remove unnecessary base packages
rpm-ostree override remove $(eval echo -e `< /src/packages/removed.txt`)
rpm-ostree install $(eval echo -e `< /src/packages/added.txt`)
