DISTRO_NAME="Debian"
TARBALL_URL['aarch64']="https://github.com/xiv3r/termux-proot-distro/releases/download/rootfs/debian-bookworm-aarch64-pd-v4.7.0.tar.xz"
TARBALL_SHA256['aarch64']="4baa32280cc70b67e2c650777c1d974349f0cdf23afaabc305ad3bc6182b8df8"

distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
