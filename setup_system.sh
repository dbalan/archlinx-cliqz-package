#!/bin/bash

set -xe

echo 'Building archlinux package for cliqz browser'
pacman -Syu --noconfirm
pacman -S git sudo --noconfirm
pacman -S --needed base-devel --noconfirm
useradd -m -s /bin/bash build
echo "build ALL=NOPASSWD: ALL" >> /etc/sudoers

echo "Setting up user succeeded"
ls -l /

cd /home/build
sudo -u build touch foo

