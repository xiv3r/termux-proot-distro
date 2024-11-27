#!/bin/sh

apt install -y proot-distro 
###
wget -O $PREFIX/etc/proot-distro/kali-lite.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-lite.sh
###
wget -O $PREFIX/etc/proot-distro/kali-nano.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-nano.sh
###
wget -O $PREFIX/etc/proot-distro/kali-minimal.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-minimal.sh
###
wget -O $PREFIX/etc/proot-distro/kali-full.sh https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-full.sh
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
