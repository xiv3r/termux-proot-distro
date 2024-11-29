DISTRO_NAME="BlackArch"
TARBALL_URL['aarch64']="https://github.com/xiv3r/termux-proot-distro/releases/download/rootfs/archlinux-aarch64-pd-v4.6.0.tar.xz"
TARBALL_SHA256['aarch64']="43767c1fe8abaddff240395b75aea03919b7d33ab1bbca3ae0c2f3839527ad19"

distro_setup() {
        # Fix environment variables on login or su.
        local f
        for f in su su-l system-local-login system-remote-login; do
                echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/"${f}"
        done

        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd locale-gen
}
