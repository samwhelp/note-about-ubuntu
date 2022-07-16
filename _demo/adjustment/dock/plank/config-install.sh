#!/usr/bin/env bash

set -e


################################################################################
### Head: plank
##

plank_config_install () {
	plank_config_install_dock1_settings
	plank_config_install_dock1_launchers
}


plank_config_install_dock1_settings () {

	echo
	echo "##"
	echo "## Config: plank"
	echo "##"
	echo


	##
	## gsettings list-recursively net.launchpad.plank | sort
	## gsettings list-recursively net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ | sort
	## dconf dump /net/launchpad/plank/
	## dconf dump /net/launchpad/plank/docks/dock1/
	## dconf reset -f /net/launchpad/plank/docks/dock1/
	##


	#echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode 'intelligent'"
	#gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode 'intelligent'


	#echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode 'auto'"
	#gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode 'auto'


	echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode 'none'"
	gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode 'none'


	echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ auto-pinning false"
	gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ auto-pinning false


	echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme 'Gtk+'"
	gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme 'Gtk+'


	#echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ icon-size 48"
	#gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ icon-size 48

	echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ icon-size 36"
	gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ icon-size 36




	echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ zoom-enabled true"
	gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ zoom-enabled true

	echo "gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ icon-size 36"
	gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ zoom-percent 150



	# gsettings get net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ dock-items

	echo 'gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ dock-items "'"['desktop.dockitem', 'pcmanfm-qt.dockitem', 'org.xfce.mousepad.dockitem', 'firefox.dockitem', 'sakura.dockitem']"'"'
	gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ dock-items "['desktop.dockitem', 'pcmanfm-qt.dockitem', 'org.xfce.mousepad.dockitem', 'firefox.dockitem', 'sakura.dockitem']"


	##
	## /usr/share/applications/pcmanfm-qt.desktop
	## /usr/share/applications/org.xfce.mousepad.desktop
	## /usr/share/applications/firefox.desktop
	## /usr/share/applications/sakura.desktop
	##



	echo
}


plank_config_install_dock1_launchers () {

	echo
	echo "mkdir -p $HOME/.config/plank/dock1/launchers"
	mkdir -p "$HOME/.config/plank/dock1/launchers"
	echo


	echo
	echo "rm -rf $HOME/.config/plank/dock1/launchers/*"
	rm -rf $HOME/.config/plank/dock1/launchers/*
	echo


	echo "install -Dm644 ./config/plank/launchers/desktop.dockitem $HOME/.config/plank/dock1/launchers/desktop.dockitem"
	install -Dm644 "./config/plank/launchers/desktop.dockitem" "$HOME/.config/plank/dock1/launchers/desktop.dockitem"



	echo "install -Dm644 ./config/plank/launchers/pcmanfm-qt.dockitem $HOME/.config/plank/dock1/launchers/pcmanfm-qt.dockitem"
	install -Dm644 "./config/plank/launchers/pcmanfm-qt.dockitem" "$HOME/.config/plank/dock1/launchers/pcmanfm-qt.dockitem"


	echo "install -Dm644 ./config/plank/launchers/org.xfce.mousepad.dockitem $HOME/.config/plank/dock1/launchers/org.xfce.mousepad.dockitem"
	install -Dm644 "./config/plank/launchers/org.xfce.mousepad.dockitem" "$HOME/.config/plank/dock1/launchers/org.xfce.mousepad.dockitem"


	echo "install -Dm644 ./config/plank/launchers/firefox.dockitem $HOME/.config/plank/dock1/launchers/firefox.dockitem"
	install -Dm644 "./config/plank/launchers/firefox.dockitem" "$HOME/.config/plank/dock1/launchers/firefox.dockitem"


	echo "install -Dm644 ./config/plank/launchers/sakura.dockitem $HOME/.config/plank/dock1/launchers/sakura.dockitem"
	install -Dm644 "./config/plank/launchers/sakura.dockitem" "$HOME/.config/plank/dock1/launchers/sakura.dockitem"



}

##
### Tail: plank
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	plank_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
