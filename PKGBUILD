pkgname=proterozoic
pkgver=1.$(date '+%Y.%m.%d_%H.%M.%S')
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(i686 x86_64)
license=('GPL')
install=proterozoic.install
backup=(etc/httpd/conf/site-specific.conf etc/locale.conf)
makedepends=(findutils coreutils net-tools gcc-multilib)
depends=(jfsutils lsof 'ddrescue>=1.15' cryptsetup
	 emacs-nox emacs-php-mode bash-completion fgetty screen-best htop
	 python2 python2-formencode python-lxml expect s3fs parallel
	 lzop zip unzip xmlstarlet jshon sudo less bc busybox strace
	 iptables iproute2 inetutils dnsutils net-tools nmap gnu-netcat
	 openssh sshfs ntp rsync curl git abs burp whois) # gptfdisk

package() {
	 cp -a ${startdir}/{etc,usr,srv} ${pkgdir}/
	 mkdir -p ${pkgdir}/etc/skel.ppz/.macromedia

	 b=-m64; [ $CARCH = i686 ] && b='-m32 -Wl,--dynamic-linker=/lib/ld-linux.so.2'
	 /usr/bin/gcc $b $CFLAGS -Wall ${startdir}/c/cdtray.c -o ${pkgdir}/usr/bin/cdtray

	 mpconf=usr/share/ppz/mplayer.input.conf
	 cat ${startdir}/${mpconf} | awk '/^[^#]/ {print "CTRL-" $0}' >> ${pkgdir}/${mpconf}

	 fbdir=${pkgdir}/etc/skel.ppz/.config/fbpanel
	 for width in 1024 1280; do
		  sed -e 's/\(widthtype = \).*$/\1pixel/ig' \
				-e 's/\(width = \)100$/\1'$width'/ig' ${fbdir}/default >| ${fbdir}/$width
	 done

	 chmod 444 ${pkgdir}/etc/.emacs.d/init.el
	 chmod 555 ${pkgdir}/etc/.emacs.d
	 chmod 440 ${pkgdir}/etc/sudoers.d/ppz
	 chmod 750 ${pkgdir}/etc/sudoers.d
	 chmod 770 ${pkgdir}/etc/privoxy
	 chmod +x ${pkgdir}/usr/bin/*
}
