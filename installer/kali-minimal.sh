DISTRO_NAME="kali-minimal"
DISTRO_COMMENT="kali minimal released"
TARBALL_URL['aarch64']="https://old.kali.org/nethunter-images/kali-2024.3/rootfs/kali-nethunter-rootfs-minimal-arm64.tar.xz"
TARBALL_SHA256['aarch64']=""
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
