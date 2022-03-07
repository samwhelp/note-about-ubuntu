#!/usr/bin/env bash

set -e


################################################################################
### Head: fcitx
##
fcitx_config_install () {

	echo
	echo "mkdir -p $HOME/.config/fcitx/conf"
	mkdir -p "$HOME/.config/fcitx/conf"

	echo
	echo "mkdir -p $HOME/.config/fcitx/addon"
	mkdir -p "$HOME/.config/fcitx/addon"


	echo
	echo "install -Dm644 ./config/fcitx/profile $HOME/.config/fcitx/profile"
	install -Dm644 ./config/fcitx/profile "$HOME/.config/fcitx/profile"


	echo
	echo "install -Dm644 ./config/fcitx/conf/fcitx-classic-ui.config $HOME/.config/fcitx/conf/fcitx-classic-ui.config"
	install -Dm644 ./config/fcitx/conf/fcitx-classic-ui.config "$HOME/.config/fcitx/conf/fcitx-classic-ui.config"


	echo
	echo "install -Dm644 ./config/fcitx/conf/fcitx-chewing.config $HOME/.config/fcitx/conf/fcitx-chewing.config"
	install -Dm644 ./config/fcitx/conf/fcitx-chewing.config "$HOME/.config/fcitx/conf/fcitx-chewing.config"


	echo
	echo "install -Dm644 ./config/fcitx/conf/fcitx-quickphrase.config $HOME/.config/fcitx/conf/fcitx-quickphrase.config"
	install -Dm644 ./config/fcitx/conf/fcitx-quickphrase.config "$HOME/.config/fcitx/conf/fcitx-quickphrase.config"


	echo
	echo "install -Dm644 ./config/fcitx/addon/fcitx-kimpanel-ui.conf $HOME/.config/fcitx/addon/fcitx-kimpanel-ui.conf"
	install -Dm644 ./config/fcitx/addon/fcitx-kimpanel-ui.conf "$HOME/.config/fcitx/addon/fcitx-kimpanel-ui.conf"

	echo
	echo "install -Dm644 ./config/fcitx/addon/fcitx-quickphrase.conf $HOME/.config/fcitx/addon/fcitx-quickphrase.conf"
	install -Dm644 ./config/fcitx/addon/fcitx-quickphrase.conf "$HOME/.config/fcitx/addon/fcitx-quickphrase.conf"


	echo
	echo "install -Dm644 ./config/fcitx/addon/fcitx-spell.conf $HOME/.config/fcitx/addon/fcitx-spell.conf"
	install -Dm644 ./config/fcitx/addon/fcitx-spell.conf "$HOME/.config/fcitx/addon/fcitx-spell.conf"

	fcitx_config_install_im_config


	echo
}

fcitx_config_install_im_config () {
	fcitx_config_install_im_config_by_command
	#fcitx_config_install_im_config_pam_environment
}

fcitx_config_install_im_config_by_command () {
	echo

	echo "im-config -n fcitx"
	im-config -n fcitx

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo
}

fcitx_config_install_im_config_pam_environment () {

	echo
	echo "install -m 644 ./config/fcitx/.pam_environment $HOME/.pam_environment"
	install -m 644 ./config/fcitx/.pam_environment $HOME/.pam_environment

}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	fcitx_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
