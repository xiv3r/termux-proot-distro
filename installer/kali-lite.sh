DISTRO_NAME="kali-lite"
TARBALL_URL['aarch64']="https://github.com/xiv3r/termux-proot-distro/releases/download/rootfs/kali_rootfs_lite.tar.xz"
TARBALL_SHA256['aarch64']="1dda4379f6714d0e1df958bf811a12004b0b82a8808efc8a93ded5b299cd9059"
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
