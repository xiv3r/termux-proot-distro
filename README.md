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

## BlackArch Install 
> - proot-distro login balckarch
> - execute the cmd
```sh
pacman -Sy && pacman -S curl -y ; curl -O https://blackarch.org/strap.sh && chmod +x strap.sh && sh strap.sh
```
