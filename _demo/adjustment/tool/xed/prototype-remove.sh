#!/usr/bin/env bash

set -e


################################################################################
### Head: xed
##

xed_prototype_remove () {

	echo
	echo "##"
	echo "## Prototype: xed"
	echo "##"
	echo


	xed_prototype_remove_by_each_file


	echo
	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/


	echo

}

xed_prototype_remove_by_each_file () {


	echo
	echo "sudo rm -f /usr/share/glib-2.0/schemas/50_xed.gschema.override"
	sudo rm -f "/usr/share/glib-2.0/schemas/50_xed.gschema.override"


}

##
### Tail: xed
################################################################################


################################################################################
### Head: prototype_remove
##

main_prototype_remove () {

	xed_prototype_remove

}

##
### Tail: prototype_remove
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_prototype_remove

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
