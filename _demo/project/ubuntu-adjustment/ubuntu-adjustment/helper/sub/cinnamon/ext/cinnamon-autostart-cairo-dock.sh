

################################################################################
### Head: cinnamon
##
sys_cinnamon_config_install_cinnamon_autostart_cairo_dock () {

	echo
	echo "## Config: sys_cinnamon_config_install_cinnamon_autostart_cairo_dock"
	echo

	cinnamon_dock_cairo_dock_config


	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / dock / cairo-dock
##

cinnamon_dock_cairo_dock_config () {

	cinnamon_dock_cairo_dock_config_autostart

}


cinnamon_dock_cairo_dock_config_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="cairo-dock-on-cinnamon.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "mkdir -p $autostart_dir_path"
	mkdir -p "$autostart_dir_path"

	echo "cp '/usr/share/applications/cairo-dock.desktop' $target_file_path"
	cp '/usr/share/applications/cairo-dock.desktop' "$target_file_path"

	echo "echo 'OnlyShowIn=X-Cinnamon;' >> $target_file_path"
	echo 'OnlyShowIn=X-Cinnamon;' >> "$target_file_path"

}



##
### Tail: cinnamon / dock / cairo-dock
################################################################################
