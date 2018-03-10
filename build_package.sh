#!/bin/bash

set -e
echo 'Building archlinux package for cliqz browser'
pacman -Syu --noconfirm
pacman -S git sudo --noconfirm

useradd -m -s /bin/bash -d /build build
echo "build ALL=NOPASSWD: ALL" >> /etc/sudoers


git clone https://aur.archlinux.org/package-query.git
cd package-query
sudo -u build makepkg -si --noconfirm
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
sudo -u makepkg -si --noconfirm
cd ..
