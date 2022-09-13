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
source "${THE_SUB_DIR_PATH}/sakura/ext/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Main
##

mod_main () {

	util_error_echo

	util_error_echo '################################################################################'
	util_error_echo '### Head: package-install'
	util_error_echo '##'
	util_error_echo

	${THE_SUB_SAKURA_BIN_DIR_PATH}/package-install.sh

	util_error_echo
	util_error_echo '##'
	util_error_echo '### Tail: package-install'
	util_error_echo '################################################################################'

	util_error_echo
	util_error_echo

	util_error_echo '################################################################################'
	util_error_echo '### Head: asset-install'
	util_error_echo '##'
	util_error_echo

	${THE_SUB_SAKURA_BIN_DIR_PATH}/asset-install.sh

	util_error_echo
	util_error_echo '##'
	util_error_echo '### Tail: asset-install'
	util_error_echo '################################################################################'

	util_error_echo
	util_error_echo

	util_error_echo '################################################################################'
	util_error_echo '### Head: config-install'
	util_error_echo '##'
	util_error_echo

	${THE_SUB_SAKURA_BIN_DIR_PATH}/config-install.sh

	util_error_echo
	util_error_echo '##'
	util_error_echo '### Tail: config-install'
	util_error_echo '################################################################################'

	util_error_echo

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
