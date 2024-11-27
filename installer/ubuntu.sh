DISTRO_NAME="Ubuntu"
TARBALL_URL['aarch64']="https://github.com/xiv3r/termux-proot-distro/releases/download/rootfs/ubuntu-jammy-aarch64-pd-v4.11.0.tar.xz"
TARBALL_SHA256['aarch64']="caddd5b6d4dc48fd028e369a9ecb101f96e01ad3957b46e77f637252612ec628"
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
