!include /usr/share/ublue-os/just/bling.just

# Include some of your custom scripts here!
docker:
  sudo systemctl enable --now docker
  sudo usermod -aG docker $USER
  newgrp docker