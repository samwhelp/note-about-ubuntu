#!/usr/bin/env bash

set -e


################################################################################
### Head: kde-plasma
##
kde_plasma_config_remove () {

	echo
	echo "##"
	echo "## Remove Config Start: kde-plasma"
	echo "##"
	echo

	kde_plasma_config_remove_file
	kde_plasma_config_remove_dir


	echo
}

##
### Tail: kde-plasma
################################################################################

################################################################################
### Head: kde-plasma / remove config file
##
kde_plasma_config_remove_file () {

	echo
	echo "##"
	echo "## Remove Config File: kde-plasma"
	echo "##"
	echo

local file_list="
akregatorrc
bluedevilglobalrc
drkonqirc
kactivitymanagerdrc
kactivitymanagerd-statsrc
kcminputrc
kconf_updaterc
kded5rc
kdeglobals
kgammarc
kglobalshortcutsrc
khotkeysrc
kmixrc
korgacrc
krunnerrc
kscreenlockerrc
ksmserverrc
ktimezonedrc
kwalletrc
kwinrc
kwinrulesrc
kxkbrc
plasma-localerc
plasma-org.kde.plasma.desktop-appletsrc
plasmarc
plasmashellrc
powerdevilrc
powermanagementprofilesrc
spectaclerc
systemsettingsrc
"

	##echo "${file_list}"

	echo "cd ${HOME}/.config/"
	cd "${HOME}/.config/"

	echo "rm -f" ${file_list}
	rm -f ${file_list}

	echo
}


kde_plasma_config_remove_dir () {

	echo
	echo "##"
	echo "## Remove Config Dir: kde-plasma"
	echo "##"
	echo

local dir_list="
KDE
kde.org
kdeconnect
kdedefaults
plasma-workspace
session
"

	##echo "${dir_list}"

	echo "cd ${HOME}/.config/"
	cd "${HOME}/.config/"

	echo "rm -rf" ${dir_list}
	rm -rf ${dir_list}

	echo
}

##
### Tail: kde-plasma / remove config file
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	kde_plasma_config_remove

	return 0

}
#gsettings set start
main_config_install

##
### Tail: main
################################################################################
