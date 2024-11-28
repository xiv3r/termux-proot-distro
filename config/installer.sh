#!/bin/sh

apt install -y proot-distro 
###
mkdir -p $PREFIX/etc/proot-backup
###
mv $PREFIX/etc/proot-distro/*.sh $PREFIX/etc/proot-backup/
### Kali Lite
wget -O $PREFIX/etc/proot-distro/kali-lite.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-lite.sh
### Kali Nano
wget -O $PREFIX/etc/proot-distro/kali-nano.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-nano.sh
### Kali Minimal
wget -O $PREFIX/etc/proot-distro/kali-minimal.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-minimal.sh
### Kali Full
wget -O $PREFIX/etc/proot-distro/kali-full.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-full.sh
### Blackarch
wget -O $PREFIX/etc/proot-distro/blackarch.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/blackarch.sh
###
chmod a+x $PREFIX/etc/proot-distro/*.sh
###
proot-distro list
###
echo "
SELECT DISTRO:
To install: proot-distro install {disrto name}
      
       e.g: proot-distro install kali-minimal
"
echo "
To Login: proot-distro login {distro-name}
    
     e.g: proot-distro login kali-minimal
" 
