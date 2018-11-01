PKGMN  =pacman
PKGOPT =--needed --noconfirm
PKGU   =-Syuq
PKGI   =-Syq
PKGR   =-Rns

install:
	./.setup/setup.sh install core

uninstall:
	./.setup/setup.sh unistall core

