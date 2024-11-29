DISTRO_NAME="Kali-Nano"
TARBALL_URL['aarch64']="https://github.com/xiv3r/termux-proot-distro/releases/download/rootfs/kali-rolling_arm64-rootfs-nano.tar.xz"
TARBALL_SHA256['aarch64']="c49fab64df4b427d240c0af078cca4a58ed1db6c66a321d5f3ab479007a64b1f"
distro_setup() {

        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd locale-gen
}
