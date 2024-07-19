#!/usr/bin/bash
sudo xbps-install -Syu xorg dbus NetworkManager mesa-dri mesa-vulkan-intel intel-video-accel pulseaudio pavucontrol kde5 kde5-baseapps fastfetch opendoas vlc gwenview&&
sudo touch /etc/doas.conf && sudo echo "permit persist xh as root" && sudo ln -s /etc/sv/dbus /var/service && sudo ln -s /etc/sv/NetworkManager /var/service &&
sudo ln -s /etc/sv/elognd /var/service && sudo ln -s /etc/sv/seatd /var/service && sudo ln -s /etc/sv/polkitd /var/service && sudo ln -s /etc/sv/rtkit /var/service &&
sudo ln -s /etc/sv/sddm /var/service && sudo reboot
