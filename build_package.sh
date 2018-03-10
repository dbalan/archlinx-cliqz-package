git clone https://aur.archlinux.org/package-query.git
cd package-query
sudo -u build makepkg -si --noconfirm
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
sudo -u makepkg -si --noconfirm
cd ..
