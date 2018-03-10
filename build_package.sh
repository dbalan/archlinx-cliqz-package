#!/bin/bash

echo 'Building archlinux package for cliqz browser'
pacman -Syu --noconfirm
pacman -S git --noconfirm

git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..
