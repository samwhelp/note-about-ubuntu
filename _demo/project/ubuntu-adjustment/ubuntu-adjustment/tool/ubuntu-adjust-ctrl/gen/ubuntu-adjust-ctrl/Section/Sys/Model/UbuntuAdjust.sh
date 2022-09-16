

################################################################################
### Head: Mod / Module Name List
##

mod_ubuntu_adjustment_module_name_list () {

	#util_error_echo "mod_ubuntu_adjustment_module_name_list"
	#util_error_echo "$@"

	##
	## ubuntu-adjust-ctrl list
	##

	local base_dir_path="${THE_UBUNTU_ADJUSTMENT_HELPER_SYSTEM_DIR_PATH}/${THE_UBUNTU_ADJUSTMENT_SUB_MODULE_ROOT_DIR_NAME}"


	sys_ubuntu_adjustment_module_name_list "$base_dir_path"

}

##
### Tail: Mod / Module Name List
################################################################################


################################################################################
### Head: Mod / Module Action Execute
##

mod_ubuntu_adjustment_script_execute_by_module_action () {

	#util_error_echo "mod_ubuntu_adjustment_script_execute_by_module_action"
	#util_error_echo "$@"

	local base_dir_path="${THE_UBUNTU_ADJUSTMENT_HELPER_SYSTEM_DIR_PATH}/${THE_UBUNTU_ADJUSTMENT_SUB_MODULE_ROOT_DIR_NAME}"

	local choose_module="$1"
	local choose_action="$2"
	local script_file_path="${base_dir_path}/${choose_module}/bin/${choose_action}.sh"

	sys_ubuntu_adjustment_target_script_execute "${script_file_path}"

}

##
### Tail: Mod / Module Action Execute
################################################################################
