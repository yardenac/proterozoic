pkgname=hades
pkgver=00001
pkgrel=1
pkgdesc="Configs and scripts overlaying Arch Linux"
arch=(any)
license=('GPL')
makedepends=(findutils)
depends=(emacs-nox bash-completion)

package() {
	 cp -a ${startdir}/etc ${pkgdir}/etc
#	 install -t ${pkgdir} ${startdir}/tree/*
}
