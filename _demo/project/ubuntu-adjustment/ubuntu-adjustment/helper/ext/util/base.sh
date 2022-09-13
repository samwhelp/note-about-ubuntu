

################################################################################
### Head: Util / Command
##

is_function_exist () {
	if type -p "$1" > /dev/null; then
		return 0
	else
		return 1
	fi
}

# is_command_exist () {
# 	if command -v "$1" > /dev/null; then
# 		return 0
# 	else
# 		return 1
# 	fi
# }

is_command_exist () {
	if [ -x "$(command -v $1)" ]; then
		return 0
	else
		return 1
	fi
}

##
### Tail: Util / Command
################################################################################


################################################################################
### Head: Util / Process
##

util_stop_all ()  {

	if is_command_exist 'pkill'; then
		util_stop_all_by_pkill "$1"
		return 0
	fi

	if is_command_exist 'killall'; then
		util_stop_all_by_killall "$1"
		return 0
	fi

	return 0
}

util_stop_all_by_pkill () {

	if pkill "$1"; then
		return 0
	fi

	return 0
}

util_stop_all_by_killall () {

	if killall -q -9 "$1"; then
		return 0
	fi

	return 0

}

##
### Tail: Util / Process
################################################################################


################################################################################
### Head: Util / self_actions
##

util_self_actions () {
	grep '^sub_run' "$THE_CMD_FILE_PATH" | cut -d ' ' -f 1 | awk -F 'sub_run_' '{print $2}' | sort -u
}

##
### Tail: Util / self_actions
################################################################################
