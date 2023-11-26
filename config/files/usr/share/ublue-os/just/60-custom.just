!include /usr/share/ublue-os/just/100-bling.just

# Include some of your custom scripts here!

enable-opentabletdriver:
  systemctl --user enable opentabletdriver.service --now
