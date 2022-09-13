

################################################################################
### Head: Profile / Run
##

profile_run () {
	profile_keybind
	profile_theme
	profile_rule
}

##
### Tail: Profile / Run
################################################################################


################################################################################
### Head: Profile / Subject / Keybind
##

profile_keybind () {

	local keybind=$(sys_profile_keybind_config_load)

	if sys_profile_keybind_source_load "$keybind"; then
		return 0
	fi

}

profile_keybind_apply () {

	local keybind=$(sys_profile_keybind_config_load)

	if sys_profile_keybind_source_load "$keybind"; then
		if is_function_exist skel_keybind; then
			skel_keybind
			pkill -USR1 -x sxhkd
		fi
		return 0
	fi

}

##
### Tail: Profile / Subject / Keybind
################################################################################


################################################################################
### Head: Profile / Subject / Theme
##

profile_theme () {

	local theme=$(sys_profile_theme_config_load)

	if sys_profile_theme_source_load "$theme"; then
		return 0
	fi

}

profile_theme_apply () {

	local theme=$(sys_profile_theme_config_load)

	if sys_profile_theme_source_load "$theme"; then
		is_function_exist skel_theme && skel_theme
		return 0
	fi

}

##
### Tail: Profile / Subject / Theme
################################################################################


################################################################################
### Head: Profile / Subject / Rule
##

profile_rule () {

	local rule=$(sys_profile_rule_config_load)

	if sys_profile_rule_source_load "$rule"; then
		return 0
	fi

}

profile_rule_apply () {

	local rule=$(sys_profile_rule_config_load)

	if sys_profile_rule_source_load "$rule"; then
		is_function_exist skel_rule && skel_rule
		return 0
	fi

}

##
### Tail: Profile / Subject / Rule
################################################################################


################################################################################
### Head: Profile / Config / Preare
##

sys_profile_subject_config_prepare () {

	local subject="$1"
	local value="$2"
	local subject_file_path="$THE_SYS_CACHE_PROFILE_DIR_PATH/$subject.conf"

	sys_profile_subject_config_prepare_dir

	echo "$value" > "$subject_file_path"

}

sys_profile_subject_config_prepare_dir () {

	if [ -f "$THE_SYS_CACHE_PROFILE_DIR_PATH" ]; then
		return 0
	fi

	mkdir -p "$THE_SYS_CACHE_PROFILE_DIR_PATH"
}

##
### Tail: Profile / Config / Preare
################################################################################


################################################################################
### Head: Profile / Config / Read
##

sys_profile_subject_config_check_file_exist () {

	local subject="$1"

	local subject_file_path="$THE_SYS_CACHE_PROFILE_DIR_PATH/$subject.conf"

	if [ -f "$subject_file_path" ]; then
		echo "$subject_file_path"
		return 0				## is exist
	fi

	sys_profile_subject_config_prepare "$subject" 'main'

	echo "$subject_file_path"
	return 1					## not exist

}

sys_profile_subject_config_load () {

	local subject="$1"
	local config_file_path

	if ! config_file_path="$(sys_profile_subject_config_check_file_exist $subject)"; then
		util_debug_echo
		util_debug_echo "## File Not Exist: "
		util_debug_echo
		util_debug_echo "$config_file_path"
		util_debug_echo

		echo 'main' ## let value=main, if config file not exist

		return 1
	fi

	#util_debug_echo "cat $config_file_path"
	cat "$config_file_path"

}


##
### Tail: Profile / Config / Read
################################################################################


################################################################################
### Head: Profile / Config / Read / Subject
##

sys_profile_keybind_config_load () {
	##cat "$THE_SYS_CACHE_PROFILE_DIR_PATH/keybind.conf"

	sys_profile_subject_config_load 'keybind'
}

sys_profile_theme_config_load () {
	##cat "$THE_SYS_CACHE_PROFILE_DIR_PATH/theme.conf"

	sys_profile_subject_config_load 'theme'
}

sys_profile_rule_config_load () {
	##cat "$THE_SYS_CACHE_PROFILE_DIR_PATH/rule.conf"

	sys_profile_subject_config_load 'rule'
}

##
### Tail: Profile / Config / Read / Subject
################################################################################


################################################################################
### Head: Profile / Source / Load
##

sys_profile_subject_source_check_file_exist () {

	local subject="$1"
	local profile="$2"

	local subject_file_path="$THE_SYS_PROFILE_DIR_PATH/$profile/$subject.sh"

	if [ -f "$subject_file_path" ]; then
		echo "$subject_file_path"
		return 0				## is exist
	fi

	echo "$subject_file_path"
	return 1					## not exist

}

sys_profile_subject_source_load () {


	local subject="$1"
	local profile="$2"

	local source_file_path

	if ! source_file_path="$(sys_profile_subject_source_check_file_exist $subject $profile)"; then
		util_debug_echo
		util_debug_echo "## File Not Exist: "
		util_debug_echo
		util_debug_echo "$source_file_path"
		util_debug_echo
		return 1
	fi

	util_debug_echo "source $source_file_path"
	source "$source_file_path"

}


##
### Tail: Profile / Source / Load
################################################################################


################################################################################
### Head: Profile / Source / Load / Subject
##

sys_profile_keybind_source_load () {
	#local profile="$1"
	#source "$THE_SYS_PROFILE_DIR_PATH/$profile/keybind.sh"

	local profile="$1"
	sys_profile_subject_source_load "keybind" "$profile"

}

sys_profile_theme_source_load () {
	#local profile="$1"
	#source "$THE_SYS_PROFILE_DIR_PATH/$profile/theme.sh"

	local profile="$1"
	sys_profile_subject_source_load "theme" "$profile"

}

sys_profile_rule_source_load () {
	#local profile="$1"
	#source "$THE_SYS_PROFILE_DIR_PATH/$profile/rule.sh"

	local profile="$1"
	sys_profile_subject_source_load "rule" "$profile"

}


##
### Tail: Profile / Source / Load / Subject
################################################################################
