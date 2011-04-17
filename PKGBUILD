pkgname=proterozoic
#todo - write small hashing program
pkgver=0.$(date +%s)
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(any)
license=('GPL')
install=proterozoic.install
makedepends=(findutils coreutils)
depends=(emacs-nox bash bash-completion iptables sudo cryptsetup diffutils ntp openssh sshfs syslog-ng)
# slim xorg-server xorg-xinit xorg-utils xorg-server-utils xfwm4 xfce4-panel xfdesktop thunar xfce4-session xfce4-settings xfce4-appfinder xfce-utils xfconf)
#wicd

package() {
	 cp -a ${startdir}/{etc,lib,usr} ${pkgdir}/
	 chmod 444 ${pkgdir}/etc/.emacs.d/init.el
	 chmod 555 ${pkgdir}/etc/.emacs.d
	 chmod 440 ${pkgdir}/etc/sudoers.d/power
	 chmod 440 ${pkgdir}/etc/sudoers.d/decrypt-script
#	 chmod 750 ${pkgdir}/etc/sudoers.d
#	 install -t ${pkgdir} ${startdir}/tree/*
}
