pkgname=proterozoic
pkgver=0.$(date +%s)
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(any)
license=('GPL')
install=proterozoic.install
makedepends=(findutils coreutils net-tools)
depends=(emacs-nox bash-completion iptables sudo ntp openssh sshfs htop jfsutils bc iproute2 fgetty git lsof pacman-mirrorlist ca-certificates screen net-tools aif)
#wpa_actiond ifplugd
#wmctrl is for X systems

package() {
	 cp -a ${startdir}/{etc,lib,usr} ${pkgdir}/
	 chmod 444 ${pkgdir}/etc/.emacs.d/init.el
	 chmod 555 ${pkgdir}/etc/.emacs.d
	 chmod 440 ${pkgdir}/etc/sudoers.d/ppz
	 chmod 750 ${pkgdir}/etc/sudoers.d
}
