<p align="center"> 👁️  👁️ </p>
<p align="center"><img src="https://profile-counter.glitch.me/xiv3r/count.svg" /></p>

<h1 align="center">Kali and BlackArch in Proot-Distro </h1>

<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/installer/kali-proot.png">

<br>

# Install Kali Minimal
> - proot-distro login kali-minimal
> - execute the command
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install proot-distro wget -y && echo "clear && proot-distro login kali-minimal" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install kali-minimal && proot-distro login kali-minimal
```
```sh
apt update && apt upgrade -y && apt install wget -y && wget -O .zshrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/.zshrc && source .zshrc
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' .zshrc && source .zshrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kalimin.png">
<br>
<br>

# Install Kali Nano
> - proot-distro login kali-nano
> - execute the command
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install proot-distro wget -y && echo "clear && proot-distro login kali-nano" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install kali-nano && proot-distro login kali-nano
```
```sh
apt update && apt upgrade -y && apt install wget -y && wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/bash.bashrc && source /etc/bash.bashrc
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kalinh.png">
<br>
<br>
  
# Install Kali in Debian
> - proot-distro login debian
> - execute the command below
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install proot-distro wget -y && echo "clear && proot-distro login debian" >> $PREFIX/etc/bash.bashrc && proot-distro install debian && proot-distro login debian 
```
```sh
apt update && apt upgrade -y && apt install wget -y && wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/kali-deb.bashrc && source /etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/installer/kali-deb.sh | sh
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/kali-deb.png">
<br>
<br>

# Install BlackArch
> - proot-distro login balckarch
> - execute the command
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install proot-distro wget -y &&  echo "clear && proot-distro login blackarch" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh && proot-distro install blackarch && proot-distro login blackarch
```
```sh
wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/blackarch.bashrc && source /etc/bash.bashrc && wget https://blackarch.org/strap.sh && chmod +x strap.sh && sh strap.sh && pacman -Syyu
```
### Add custom terminal name
> - replace `xiver` to your name
```sh
sed -i 's/user=blackarch/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
<p align="center"><img src="https://github.com/xiv3r/termux-proot-distro/blob/main/config/blarch.png">
