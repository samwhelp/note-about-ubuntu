#!/usr/bin/env bash

set -e


################################################################################
### Head: xed
##

xed_prototype_install () {

	echo
	echo "##"
	echo "## Prototype: xed"
	echo "##"
	echo


	xed_prototype_install_by_dir

	#xed_prototype_install_by_each_file


	echo
	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/


	echo

}

xed_prototype_install_by_dir () {


	echo
	echo "mkdir -p /usr/share/glib-2.0/schemas"
	mkdir -p "/usr/share/glib-2.0/schemas"


	echo
	echo "sudo cp -rf ./config/xed/schema/gschema-override/. /usr/share/glib-2.0/schemas"
	sudo cp -rf "./config/xed/schema/gschema-override/." "/usr/share/glib-2.0/schemas"


}

xed_prototype_install_by_each_file () {


	echo
	echo "mkdir -p /usr/share/glib-2.0/schemas"
	mkdir -p "/usr/share/glib-2.0/schemas"


	echo
	echo "sudo install -Dm644 ./config/xed/schema/gschema-override/50_xed.gschema.override /usr/share/glib-2.0/schemas/50_xed.gschema.override"
	sudo install -Dm644 "./config/xed/schema/gschema-override/50_xed.gschema.override" "/usr/share/glib-2.0/schemas/50_xed.gschema.override"


}

##
### Tail: xed
################################################################################


################################################################################
### Head: prototype_install
##

main_prototype_install () {

	xed_prototype_install

}

##
### Tail: prototype_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_prototype_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
