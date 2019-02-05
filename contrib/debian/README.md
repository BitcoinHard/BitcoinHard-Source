
Debian
====================
This directory contains files used to package bitcoinhardd/bitcoinhard-qt
for Debian-based Linux systems. If you compile bitcoinhardd/bitcoinhard-qt yourself, there are some useful files here.

## bitcoinhard: URI support ##


bitcoinhard-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitcoinhard-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitcoinhard-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitcoinhard128.png` to `/usr/share/pixmaps`

bitcoinhard-qt.protocol (KDE)

