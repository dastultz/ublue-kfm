#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

cd /tmp
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme

sed -i 's|-w "/root"|true|g' shell/lib-flatpak.sh
sed -i 's|-w "/root"|true|g' shell/lib-core.sh

mkdir -p /usr/share/themes
sudo ./install.sh -d /usr/share/themes -c Dark -t default -t orange -t grey -t blue -i fedora --silent-mode
sudo ./tweaks.sh --gdm --silent-mode
