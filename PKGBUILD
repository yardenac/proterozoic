pkgname=proterozoic
#todo - write small hashing program
pkgver=0.$(date +%s)
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(any)
license=('GPL')
intall=proterozoic.install
makedepends=(findutils coreutils)
depends=(emacs-nox bash bash-completion iptables sudo cryptsetup)
# slim xorg-server xorg-xinit xorg-utils xorg-server-utils xfwm4 xfce4-panel xfdesktop thunar xfce4-session xfce4-settings xfce4-appfinder xfce-utils xfconf)
#wicd

package() {
	 cp -a ${startdir}/{etc,lib,usr} ${pkgdir}/
#	 install -t ${pkgdir} ${startdir}/tree/*
}
