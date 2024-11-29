<h1 align="center">Kali and BlackArch in Proot-Distro </h1>

<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/installer/kali-proot.png">

<br>

# Install Kali Minimal
> - proot-distro login kali-minimal
> - execute the command
### Auto Install
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install proot-distro wget -y && echo "clear && proot-distro login kali-minimal" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install kali-minimal && proot-distro login kali-minimal
```
```sh
apt update && apt upgrade -y && apt install wget -y && wget -O .zshrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/.zshrc && source .zshrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kalimin.png">
<br>
<br>

# Install Kali Nano
> - proot-distro login kali-nano
> - execute the command
### Auto Install
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install proot-distro wget -y && echo "clear && proot-distro login kali-nano" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install kali-nano && proot-distro login kali-nano
```
```sh
apt update && apt upgrade -y && apt install wget -y && wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/bash.bashrc && source /etc/bash.bashrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kalinh.png">
<br>
<br>

# Install BlackArch
> - proot-distro login balckarch
> - execute the command
### Auto Install
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install proot-distro wget -y &&  echo "clear && proot-distro login blackarch" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install blackarch && proot-distro login blackarch
```
```sh
wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/blackarch.bashrc && source /etc/bash.bashrc && wget https://blackarch.org/strap.sh && chmod +x strap.sh && sh strap.sh && pacman -Syyu
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/blarch.png">
