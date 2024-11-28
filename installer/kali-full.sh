DISTRO_NAME="kali-full"
DISTRO_COMMENT="Kali Full Release"
TARBALL_URL['aarch64']="https://old.kali.org/nethunter-images/kali-2024.3/rootfs/kali-nethunter-rootfs-full-arm64.tar.xz"
TARBALL_SHA256['aarch64']="f213bb0914527256bbd2b3f5a1852d09f65473e832be101fdd3f0f01fec32f85"
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
