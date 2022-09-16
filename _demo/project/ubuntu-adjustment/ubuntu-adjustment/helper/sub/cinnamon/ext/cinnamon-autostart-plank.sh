

################################################################################
### Head: cinnamon
##
sys_cinnamon_config_install_cinnamon_autostart_plank () {

	echo
	echo "## Config: sys_cinnamon_config_install_cinnamon_autostart_plank"
	echo

	cinnamon_dock_plank_config


	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / dock / plank
##

cinnamon_dock_plank_config () {

	cinnamon_dock_plank_config_autostart

}


cinnamon_dock_plank_config_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="plank-on-cinnamon.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "mkdir -p $autostart_dir_path"
	mkdir -p "$autostart_dir_path"

	echo "cp '/usr/share/applications/plank.desktop' $target_file_path"
	cp '/usr/share/applications/plank.desktop' "$target_file_path"

	echo "echo 'OnlyShowIn=X-Cinnamon;' >> $target_file_path"
	echo 'OnlyShowIn=X-Cinnamon;' >> "$target_file_path"

}



##
### Tail: cinnamon / dock / plank
################################################################################
