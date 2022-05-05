#!/usr/bin/env bash

set -e


################################################################################
### Head: lightdm
##
lightdm_config_install () {

	echo
	echo "##"
	echo "## Config: lightdm"
	echo "##"
	echo

	echo "sudo mkdir -p '/etc/lightdm/lightdm-gtk-greeter.conf.d'"
	sudo mkdir -p '/etc/lightdm/lightdm-gtk-greeter.conf.d'

	echo "sudo install -Dm644 ./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf"
	sudo install -Dm644 ./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf


	echo "sudo install -Dm644 ./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/20_basic.conf"
	sudo install -Dm644 ./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/20_basic.conf


	echo

}
##
### Tail: lightdm
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	lightdm_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
