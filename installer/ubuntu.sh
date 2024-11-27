DISTRO_NAME="Ubuntu (24.04)"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-aarch64-pd-v4.11.0.tar.xz"
TARBALL_SHA256['aarch64']="a8883244a7031559a2bd8dc16b7d8afc947930b611819d8a28a09545097a6ba5"
distro_setup() {
        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
