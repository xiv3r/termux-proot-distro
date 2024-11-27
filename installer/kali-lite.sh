DISTRO_NAME="kali-lite"
TARBALL_URL['aarch64']="https://github.com/xiv3r/termux-proot-distro/releases/download/rootfs/kali_rootfs_lite.tar.xz"
TARBALL_SHA256['aarch64']="4a3bed0ac847eb6404ec9cf5d627c16361dba3ea8dbf33a5bab2974f0836850f"
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
