!include /usr/share/ublue-os/just/100-bling.just

# Include some of your custom scripts here!
finish-setup:
  sudo systemctl enable --now docker
  sudo usermod -aG docker $USER
  newgrp dockercustom
