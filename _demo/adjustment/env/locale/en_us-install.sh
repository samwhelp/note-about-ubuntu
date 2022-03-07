#!/usr/bin/env bash


################################################################################
### Head: locale
##
etc_config_default_locale () {
	sudo sh -c 'echo "LANG=\"en_US.UTF-8\"" > /etc/default/locale'

	echo
	echo '$ cat /etc/default/locale'
	echo
	cat /etc/default/locale
}


etc_config_locale_conf () {
	sudo sh -c 'echo "LANG=\"en_US.UTF-8\"" > /etc/locale.conf'

	echo
	echo '$ cat /etc/locale.conf'
	echo
	cat /etc/default/locale
}

etc_remove_locale_conf () {

	echo
	echo 'sudo rm -f /etc/locale.conf'
	echo
	sudo rm -f /etc/locale.conf

}

##
### Tail: locale
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	etc_config_default_locale

	#etc_config_locale_conf
	#etc_remove_locale_conf
}
## start
main_config_install

##
### Tail: main
################################################################################
