DISTRO_NAME="kali-minimal"
TARBALL_URL['aarch64']="https://github.com/xiv3r/termux-proot-distro/releases/download/rootfs/kali-arm64-minimal.tar.xz"
TARBALL_SHA256['aarch64']="408dc56550c1df9e36b5fc98aebb45528d4b377deb097a291f7b65bc5a624f7e"
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
