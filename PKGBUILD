pkgname=proterozoic
pkgver=1.$(date '+%Y.%m.%d_%H.%M.%S')
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(any)
license=('GPL')
install=proterozoic.install
backup=(etc/httpd/conf/{site-specific.conf,httpd.conf.ppz} etc/locale.conf)
makedepends=(findutils coreutils net-tools sqlite3)
depends=(aspell-en cryptsetup sudo bc iptables iproute2 openssh ntp
         ccze
         bash-completion screen htop diffutils arch-https-mirrors-git
         dnsutils git parallel lsof s3fs sshfs tsocks unzip whois)
conflicts=(abs)

package() {
    cp -a ${startdir}/{etc,usr,srv} ${pkgdir}/
    mkdir -p ${pkgdir}/etc/skel.ppz/.{macromedia,local/share/applications}

    fbdir=${pkgdir}/etc/skel.ppz/.config/fbpanel
    for width in 1024 1280; do
        sed -e 's/\(widthtype = \).*$/\1pixel/ig' \
            -e 's/\(width = \)100$/\1'$width'/ig' ${fbdir}/default >| ${fbdir}/$width
    done

    cat ${pkgdir}/usr/share/ppz/chromium.web.data.sql \
        | sqlite3 ${pkgdir}/etc/skel.ppz/.config/chromium/Default/Web\ Data

    chmod 440 ${pkgdir}/etc/sudoers.d/ppz
    chmod 750 ${pkgdir}/etc/sudoers.d
    chmod 770 ${pkgdir}/etc/privoxy
    chmod +x ${pkgdir}/usr/bin/* ${pkgdir}/usr/share/ppz/bin/*
}
