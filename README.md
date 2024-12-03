<p align="center"><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fxiv3r%2Ftermux-proot-distro&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=%F0%9F%91%81%EF%B8%8F+++%F0%9F%91%81%EF%B8%8F&edge_flat=false">


<h1 align="center">Kali and BlackArch in Proot-Distro </h1>

<h1 align="center">

 
   [Termux GUI](https://wiki.termux.com/wiki/Graphical_Environment)
   
| [Termux](https://apkcombo.com/termux/com.termux/)
|
| [VNC Kex App](https://store.nethunter.com/repo/com.offsec.nethunter.kex_11525001.apk)
|
</h1>


<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/installer/kali-proot.png">

<br>
<br>
<br>
<br>
</br>

# Install Kali Minimal
> - proot-distro login kali-minimal
> - execute the command
```sh
termux-setup-storage && apt update && apt full-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y && apt install proot-distro wget -y && echo "clear && proot-distro login kali-minimal" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install kali-minimal && proot-distro login kali-minimal
```
```sh
apt update && install wget -y && wget -O .zshrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/.zshrc && source .zshrc && apt full-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' .zshrc && source .zshrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kalimin.png">
<br>
<br>
 
- Uninstall
```
sed -i 's/&& proot-distro login kali-minimal/ /' $PREFIX/etc/bash.bashrc && proot-distro remove kali-minimal
```
<br>
<br>
<br>
<br>
</br>

# Install Kali Nano
> - proot-distro login kali-nano
> - execute the command
```sh
termux-setup-storage && apt update && apt full-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y && apt install proot-distro wget -y && echo "clear && proot-distro login kali-nano" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install kali-nano && proot-distro login kali-nano
```
```sh
apt update && apt install wget -y && wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/bash.bashrc && source /etc/bash.bashrc && apt full-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kalinh.png">
<br>
<br>

- Uninstall
```
sed -i 's/&& proot-distro login kali-nano/ /' $PREFIX/etc/bash.bashrc && proot-distro remove kali-nano

```
<br>
<br>
<br>
<br>
</br>

# Install Kali in Debian
> - proot-distro login debian
> - execute the command below
```sh
termux-setup-storage && apt update && apt full-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y && apt install proot-distro wget -y && echo "clear && proot-distro login debian" >> $PREFIX/etc/bash.bashrc && proot-distro install debian && proot-distro login debian 
```
```sh
apt update && apt install wget -y && wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/kali-deb.bashrc && source /etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-deb.sh | sh && apt full-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y && apt --fix-broken install && dpkg --configure -a && apt update && apt full-upgrade -y
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kali-deb.png">
<br>
<br>
</br>

- Uninstall
```
sed -i 's/&& proot-distro login debian/ /' $PREFIX/etc/bash.bashrc && proot-distro remove debian
```
<br>
<br>
<br>
<br>
</br>

# Install BlackArch
> - proot-distro login balckarch
> - execute the command
```sh
termux-setup-storage && apt update && apt full-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y && apt install proot-distro wget -y &&  echo "clear && proot-distro login blackarch" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install blackarch && proot-distro login blackarch
```
```sh
wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/blackarch.bashrc && source /etc/bash.bashrc && wget https://blackarch.org/strap.sh && chmod +x strap.sh && sh strap.sh && pacman -Syyu --noconfirm
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=blackarch/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/blarch.png">
<br>
<br>
</br>

- Uninstall
```
sed -i 's/&& proot-distro login blackarch/ /' $PREFIX/etc/bash.bashrc && proot-distro remove blackarch
```
