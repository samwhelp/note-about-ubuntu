

################################################################################
### Head: Mod / Module / asset-install
##

mod_ubuntu_adjustment_module_asset_install () {

	#util_error_echo "mod_ubuntu_adjustment_module_asset_install"
	#util_error_echo "$@"


	local choose_module="$1"
	local choose_action="asset-install"

	util_error_echo
	util_error_echo '##'
	util_error_echo "## Module: ${choose_module}"
	util_error_echo "## Action: ${choose_action}"
	util_error_echo '##'
	util_error_echo


	mod_ubuntu_adjustment_script_execute_by_module_action "${choose_module}" "${choose_action}"

}

##
### Tail: Mod / Module / asset-install
################################################################################
