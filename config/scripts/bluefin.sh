#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

fc-cache -f /usr/share/fonts/ubuntu
fc-cache -f /usr/share/fonts/inter
sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/user.conf
sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/system.conf
sed -i '/^PRETTY_NAME/s/Silverblue/uBlue-KFM/' /usr/lib/os-release
systemctl enable rpm-ostree-countme.service