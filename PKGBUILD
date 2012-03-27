pkgname=proterozoic
pkgver=0.$(date +%s)
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(i686 x86_64)
license=('GPL')
install=proterozoic.install
backup=etc/httpd/conf/site-specific.conf
makedepends=(findutils coreutils net-tools gcc-multilib)
depends=(jfsutils lsof 'ddrescue>=1.15' cryptsetup
	 emacs-nox emacs-php-mode bash-completion fgetty screen-best htop
	 python2 python-formencode python-lxml
	 lzop zip unzip xmlstarlet jshon sudo less bc busybox
	 iptables iproute2 inetutils dnsutils net-tools nmap
	 openssh sshfs ntp rsync curl git abs) # gptfdisk

package() {
	 cp -a ${startdir}/{etc,lib,usr,srv} ${pkgdir}/
	 mkdir -p ${pkgdir}/etc/skel.ppz/.macromedia

	 b=-m64; [ $CARCH = i686 ] && b='-m32 -Wl,--dynamic-linker=/lib/ld-linux.so.2'
	 /usr/bin/gcc $b $CFLAGS -Wall ${startdir}/c/cdtray.c -o ${pkgdir}/usr/bin/cdtray

	 mpconf=usr/share/ppz/mplayer.input.conf
	 cat ${startdir}/${mpconf} | awk '/^[^#]/ {print "CTRL-" $0}' >> ${pkgdir}/${mpconf}

	 chmod 444 ${pkgdir}/etc/.emacs.d/init.el
	 chmod 555 ${pkgdir}/etc/.emacs.d
	 chmod 440 ${pkgdir}/etc/sudoers.d/ppz
	 chmod 750 ${pkgdir}/etc/sudoers.d
	 chmod 770 ${pkgdir}/etc/privoxy
	 chmod +x ${pkgdir}/usr/{s,}bin/*
}
