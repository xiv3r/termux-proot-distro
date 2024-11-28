<img src="https://github.com/xiv3r/termux-proot-distro/blob/main/installer/proot.png">

# Auto Install
```sh
termux-setup-storage && apt update && apt upgrade -y && apt install wget -y && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-proot-distro/refs/heads/main/config/installer.sh | sh
```

### Auto login
> replace the name `kali-minimal` to your distro name
```sh
echo "proot-distro login kali-minimal" >> $PREFIX/etc/bash.bashrc
```
