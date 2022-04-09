#!/bin/sh
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"
echo "Make sure mirrorlist have multilib in /etc/pacman.conf"

echo "cosmos" > /etc/hostname
echo "# Host addresses
127.0.0.1  localhost
127.0.1.1  cosmos
::1        localhost ip6-localhost ip6-loopback
ff02::1    ip6-allnodes
ff02::2    ip6-allrouters" > /etc/hosts

# System update
sudo pacman -Syu

# Install git
sudo pacman -S git

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -rf yay

# Install ari
git clone https://github.com/Marakusa/ari.git
cd ari/
sudo chmod a+x install.sh
./install.sh
cd ..
sudo rm -rf ari

# Install brave instead of firefox
sudo pacman -R firefox
ari i brave-bin

# Basic applications
sudo pacman -S plasma steam code nano vi konsole kate python lutris go rust discord nodejs filezilla kdenlive cmake

# NVIDIA drivers
sudo pacman -S --needed nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader

# Wine dependencies
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

# AUR packages
ari i jetbrains-toolbox
ari i unityhub
ari i github-desktop-bin
ari i code-marketplace
ari i spotify
ari i thunderbird
