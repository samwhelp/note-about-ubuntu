

################################################################################
### Head: Mod / Module / config-install
##

mod_ubuntu_adjustment_module_config_install () {

	#util_error_echo "mod_ubuntu_adjustment_module_config_install"
	#util_error_echo "$@"


	local choose_module="$1"
	local choose_action="config-install"

	util_error_echo
	util_error_echo '##'
	util_error_echo "## Module: ${choose_module}"
	util_error_echo "## Action: ${choose_action}"
	util_error_echo '##'
	util_error_echo


	mod_ubuntu_adjustment_script_execute_by_module_action "${choose_module}" "${choose_action}"

}

##
### Tail: Mod / Module / config-install
################################################################################
