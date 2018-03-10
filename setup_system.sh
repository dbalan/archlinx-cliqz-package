#!/bin/bash

set -e
echo 'Building archlinux package for cliqz browser'
pacman -Syu --noconfirm
pacman -S git sudo --noconfirm

useradd -m -s /bin/bash -d /build build
echo "build ALL=NOPASSWD: ALL" >> /etc/sudoers
