#!/usr/bin/env bash


################################################################################
### Head: Note
##

## * https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/project/bin/install.sh

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="${THE_BASE_DIR_PATH}/../../../ext"
source "${THE_BASE_DIR_PATH}/init.sh"
source "${THE_SYS_EXT_DIR_PATH}/init.sh"
source "${THE_SUB_DIR_PATH}/gnome-shell/ext/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Main
##

mod_main () {

	mod_gnome_shell_package_install

}

##
### Tail: Model / Main
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_main "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
