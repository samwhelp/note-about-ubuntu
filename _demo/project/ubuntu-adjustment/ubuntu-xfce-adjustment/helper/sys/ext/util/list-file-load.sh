

################################################################################
### Head: Util / List File Load
##


##
## Notice:
## package-list.txt, the last line must new empty line
##

util_list_file_load () {

	local file_path="$1"

	cat "${file_path}"  | while IFS='' read -r line; do
		trim_line=$(echo ${line}) # trim

		## https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
		## ignore leading #
		if [ "${trim_line:0:1}" == '#' ]; then
			continue;
		fi

		## ignore empty line
		if [[ -z ${trim_line} ]]; then
			continue;
		fi

		echo "${line}"
	done
}

##
### Tail: Util / List File Load
################################################################################
