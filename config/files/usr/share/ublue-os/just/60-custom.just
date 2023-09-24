!include /usr/share/ublue-os/just/bling.just

# Include some of your custom scripts here!
finish-setup:
  sudo systemctl enable --now docker
  sudo usermod -aG docker $USER
  newgrp dockercustom

# from here down is from bling 60-custom.just
# should be fixed (renamed to 100-bling.just in later merge)

# vim: set ft=make :

# Enable xwaylandvideobridge
fixscreenshare:
  cp /usr/share/applications/org.kde.xwaylandvideobridge.desktop $HOME/.config/autostart/
