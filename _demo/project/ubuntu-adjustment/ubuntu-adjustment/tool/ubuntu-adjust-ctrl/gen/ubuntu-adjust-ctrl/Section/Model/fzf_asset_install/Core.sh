

################################################################################
### Head: Mod / Fzf / Module / asset-install
##

mod_ubuntu_adjustment_fzf_module_asset_install () {

	#util_error_echo "mod_ubuntu_adjustment_fzf_module_asset_install"
	#util_error_echo "$@"


	if ! is_command_exist 'fzf'; then
		util_error_echo
		util_error_echo '##'
		util_error_echo '## Need: fzf'
		util_error_echo '## * https://github.com/junegunn/fzf'
		util_error_echo '##'
		util_error_echo '## Ubuntu Install:'
		util_error_echo '## $ sudo pacman -Sy --needed fzf'
		util_error_echo '##'
		util_error_echo
		return 1
	fi

	local choose_action="asset-install"
	local choose_module="$(mod_ubuntu_adjustment_module_name_list | fzf)"

	util_error_echo
	util_error_echo '##'
	util_error_echo "## Selected: [${choose_module}]"
	util_error_echo '##'


	if [ -z "${choose_module}" ]; then
		util_error_echo
		util_error_echo "## Not Selected"
		util_error_echo
		return 1
	fi

	mod_ubuntu_adjustment_module_asset_install "${choose_module}" "${choose_action}"

}

##
### Tail: Mod / Fzf / Module / asset-install
################################################################################
