DISTRO_NAME="kali-nano"
TARBALL_URL['aarch64']="https://old.kali.org/nethunter-images/kali-2024.3/rootfs/kali-nethunter-rootfs-nano-arm64.tar.xz"
TARBALL_SHA256['aarch64']="a1624e4bb2423dee6e9806455dc963a32d6cbbcbe2d4ac008826d0fd7fe1e773"
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
