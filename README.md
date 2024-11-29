<h1 align="center">Kali and BlackArch in Proot-Distro </h1>

<img src="https://github.com/xiv3r/termux-proot-distro/blob/main/installer/kali-proot.png">

# Auto Install
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install wget -y && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh
```

## Auto login
> - replace the name `kali-minimal` to your distro name
```sh
echo "proot-distro login kali-minimal" >> $PREFIX/etc/bash.bashrc
```
## For Kali Minimal login
> - proot-distro login kali-minimal
> - execute the command
```sh
apt update && apt upgrade -y && apt install wget -y && wget -O ~/.zshrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/.zshrc && source ~/.zshrc
```
## For Kali Nano login
> - proot-distro login kali-nano
> - execute the command
```sh
apt update && apt upgrade -y && apt install wget -y && wget -O ~/etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/bash.bashrc && source ~/etc/bash.bashrc
```
## For BlackArch login
> - proot-distro login balckarch
> - execute the command 
```sh
pacman -Sy && pacman -S wget && wget -O ~/etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/blackarch.bashrc && source ~/etc/bash.bashrc && wget https://blackarch.org/strap.sh && chmod +x strap.sh && sh strap.sh && pacman -Sy
```
