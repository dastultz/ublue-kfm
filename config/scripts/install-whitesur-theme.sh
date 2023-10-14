#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

cd /tmp
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme

sed -i 's|-w "/root"|true|g' shell/lib-flatpak.sh
sed -i 's|-w "/root"|true|g' shell/lib-core.sh

sudo ./tweaks.sh --gdm -c Dark -n --silent-mode -i fedora
