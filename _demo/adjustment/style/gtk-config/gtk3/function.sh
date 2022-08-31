

util_style_attr_set_value () {

	local test="$4"
	local file="$3"
	local key="$1"
	local val="$2"
	#local pattern="s/^${key}=.*/${key}=\"${val}\"/g"
	local pattern="s/^${key}.*/${key}=\"${val}\"/g"
	
	#echo "$pattern"
	#sed -i 's/^gtk-theme-name=.*/gtk-theme-name=Numix/g' settings.ini

	if [ "none$key" = "none" ]; then
		return
	fi

	if [ "none$file" = "none" ]; then
		return
	fi

	if ! [ -f "$file" ]; then
		return
	fi

	if [ "is_$test" = "is_test" ]; then
		sed "$pattern" "$file"
		return
	fi

	sed -i "$pattern" "$file"

}
