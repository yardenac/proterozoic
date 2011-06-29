pkgname=proterozoic
pkgver=0.$(date +%s)
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(any)
license=('GPL')
install=proterozoic.install
makedepends=(findutils coreutils)
depends=(emacs-nox bash bash-completion iptables sudo cryptsetup diffutils ntp openssh sshfs syslog-ng htop jfsutils bc wget aufs2 aufs2-util iproute2 fgetty git)
#wmctrl is for X systems

package() {
	 cp -a ${startdir}/{etc,lib,usr} ${pkgdir}/
	 chmod 444 ${pkgdir}/etc/.emacs.d/init.el
	 chmod 555 ${pkgdir}/etc/.emacs.d
	 chmod 440 ${pkgdir}/etc/sudoers.d/ppz
	 chmod 750 ${pkgdir}/etc/sudoers.d
}
