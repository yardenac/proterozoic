pkgname=proterozoic
pkgver=1.$(date '+%Y.%m.%d_%H.%M.%S')
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(i686 x86_64)
license=('GPL')
install=proterozoic.install
backup=(etc/httpd/conf/{site-specific.conf,httpd.conf.ppz} etc/locale.conf)
makedepends=(findutils coreutils net-tools gcc-multilib sqlite3)
depends=(aspell-en cryptsetup sudo bc iptables iproute2 openssh ntp
         bash-completion fgetty screen htop openbsd-netcat diffutils)
optdepends=(
	 'ddrescue:	rip-dvd, rhyppe'
	 'emacs-nox:      stuff'
	 'emacs-php-mode: stuff'
	 'gnupg:		repo-drop'
	 'jshon:		ckrepo, linode-implement'
	 'less:		rip-dvd'
	 'memtest86+: testing memory at bootup'
	 'nmap:		linode-implement'
	 'perl-term-readkey: random_password'
	 'python:	myip'
	 'rsync:		rip-dvd, repo-drop'
	 'yart:		wallpaper, icons, etc'
	 abs burp dnsutils git parallel lsof s3fs sshfs unzip whois
)

package() {
	 cp -a ${startdir}/{etc,usr,srv} ${pkgdir}/
	 mkdir -p ${pkgdir}/etc/skel.ppz/.{macromedia,local/share/applications}

	 b=-m64; [ $CARCH = i686 ] && b='-m32 -Wl,--dynamic-linker=/lib/ld-linux.so.2'
	 /usr/bin/gcc $b $CFLAGS -Wall ${startdir}/c/cdtray.c -o ${pkgdir}/usr/bin/cdtray

	 fbdir=${pkgdir}/etc/skel.ppz/.config/fbpanel
	 for width in 1024 1280; do
		  sed -e 's/\(widthtype = \).*$/\1pixel/ig' \
				-e 's/\(width = \)100$/\1'$width'/ig' ${fbdir}/default >| ${fbdir}/$width
	 done

	 cat ${pkgdir}/usr/share/ppz/chromium.web.data.sql \
		  | sqlite3 ${pkgdir}/etc/skel.ppz/.config/chromium/Default/Web\ Data

	 chmod 444 ${pkgdir}/etc/.emacs.d/init.el
	 chmod 555 ${pkgdir}/etc/.emacs.d
	 chmod 440 ${pkgdir}/etc/sudoers.d/ppz
	 chmod 750 ${pkgdir}/etc/sudoers.d
	 chmod 770 ${pkgdir}/etc/privoxy
	 chmod +x ${pkgdir}/usr/bin/*
}
