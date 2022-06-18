#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-flashback
##
gnome_flashback_config_install () {

	echo
	echo "## Config: gnome-flashback"
	echo


	gnome_flashback_keybind_window_config

	gnome_flashback_keybind_workspace_config


	return

	echo
}

##
### Tail: gnome-flashback
################################################################################




################################################################################
### Head: gnome-flashback / keybind / window
##

gnome_flashback_keybind_window_config () {

	gnome_flashback_keybind_window_config_begin_move

	gnome_flashback_keybind_window_config_begin_resize

	gnome_flashback_keybind_window_config_to_close

	gnome_flashback_keybind_window_config_toggle_fullscreen

	gnome_flashback_keybind_window_config_toggle_maximized

	gnome_flashback_keybind_window_config_to_minimize

	gnome_flashback_keybind_window_config_toggle_shaded

	gnome_flashback_keybind_window_config_toggle_show_desktop

	gnome_flashback_keybind_window_config_toggle_above

	gnome_flashback_keybind_window_config_switch_windows

	gnome_flashback_keybind_window_config_to_tiling

}

gnome_flashback_keybind_window_config_begin_move () {

	## Window / Move
	echo 'gsettings set org.gnome.desktop.wm.keybindings begin-move "'"['<Super>e']"'"'
	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e']"

}

gnome_flashback_keybind_window_config_begin_resize () {

	## Window / Resize
	echo 'gsettings set org.gnome.desktop.wm.keybindings begin-resize "'"['<Super>r']"'"'
	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"

}



gnome_flashback_keybind_window_config_to_close () {

	## Window / Close
	echo 'gsettings set org.gnome.desktop.wm.keybindings close "'"['<Super>q']"'"'
	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

}


gnome_flashback_keybind_window_config_toggle_fullscreen () {

	## Window / Fullscreen
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "'"['<Super>f', 'F11']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f', 'F11']"

}


gnome_flashback_keybind_window_config_toggle_maximized () {

	## Window / Maximize
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "'"['<Super>w']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"

}


gnome_flashback_keybind_window_config_to_minimize () {

	## Window / Minimize
	echo 'gsettings set org.gnome.desktop.wm.keybindings minimize "'"['<Super>x']"'"'
	gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"

}


gnome_flashback_keybind_window_config_toggle_shaded () {

	## Window / Shade
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "'"['<Super>y']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['<Super>y']"
}


gnome_flashback_keybind_window_config_toggle_show_desktop () {

	## Window / Toggle Show Desktop
	echo 'gsettings set org.gnome.desktop.wm.keybindings show-desktop "'"['<Super>d', '<Alt>d']"'"'
	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d', '<Alt>d']"

}


gnome_flashback_keybind_window_config_toggle_above () {

	#gsettings set org.gnome.desktop.wm.keybindings always-on-top "['<Super>t']"
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-above "'"['<Super>t']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"

}


gnome_flashback_keybind_window_config_raise_or_lower () {

	echo 'gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "'"['<Super>n']"'"'
	gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "['<Super>n']"

}







gnome_flashback_keybind_window_config_switch_windows () {

	##
	## $ gsettings list-recursively | grep Alt | grep Tab | grep cinnamon
	##
	## ```
	## org.gnome.desktop.wm.keybindings switch-group ['<Alt>Above_Tab']
	## org.gnome.desktop.wm.keybindings switch-panels ['<Control><Alt>Tab']
	## org.gnome.desktop.wm.keybindings switch-windows ['<Alt>Tab']
	## ```
	##

	#gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Alt>Tab']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Alt>grave']"


	#org.gnome.desktop.wm.keybindings switch-windows-backward ['<Alt><Shift>Tab']
	#org.gnome.desktop.wm.keybindings switch-windows ['<Alt>Tab']

	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "'"['<Super>a', '<Super>h']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a', '<Super>h']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-windows "'"['<Super>s', '<Super>l']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s', '<Super>l']"




	echo 'gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "'"['<Alt>Escape']"'"'
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Alt>Escape', '<Super>k']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings cycle-windows "'"['<Super>Escape']"'"'
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Escape', '<Super>j']"





}



gnome_flashback_keybind_window_config_to_tiling () {



	gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
	gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Super>Down']"
	gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Super>Left']"
	gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super>Right']"


}




##
### Tail: gnome-flashback / keybind / window
################################################################################




################################################################################
### Head: gnome-flashback / keybind / workspace
##

gnome_flashback_keybind_workspace_config () {

	gnome_flashback_keybind_workspace_config_base

	gnome_flashback_keybind_workspace_config_switch_to_workspace_cycle

	gnome_flashback_keybind_workspace_config_switch_to_workspace_specific

	gnome_flashback_keybind_workspace_config_move_to_workspace_specific


}

gnome_flashback_keybind_workspace_config_base () {


	## Workspace
	#gsettings set org.gnome.mutter dynamic-workspaces true

	gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5
	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"



}

gnome_flashback_keybind_workspace_config_switch_to_workspace_cycle () {


	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Alt>a', '<Alt>h', '<Alt>Left']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Alt>s', '<Alt>l', '<Alt>Right']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>h', '<Alt>Left']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>l', '<Alt>Right']"


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>z']"

}

gnome_flashback_keybind_workspace_config_switch_to_workspace_specific () {


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Alt>0']"

}


gnome_flashback_keybind_workspace_config_move_to_workspace_specific () {


	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Alt>exclam']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Alt>at']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Alt>numbersign']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Alt>dollar']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Alt>percent']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Shift><Alt>asciicircum']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Shift><Alt>ampersand']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Shift><Alt>asterisk']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Shift><Alt>parenleft']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Shift><Alt>parenright']"


}


gnome_flashback_keybind_workspace_config_demo () {


	## Workspace
	#gsettings set org.gnome.mutter dynamic-workspaces true

	gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5
	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"





	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>h', '<Alt>Left']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>l', '<Alt>Right']"





	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Alt>0']"

	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Alt>exclam']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Alt>at']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Alt>numbersign']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Alt>dollar']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Alt>percent']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Shift><Alt>asciicircum']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Shift><Alt>ampersand']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Shift><Alt>asterisk']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Shift><Alt>parenleft']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Shift><Alt>parenright']"

	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Alt><Super>1']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Alt><Super>2']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Alt><Super>3']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Alt><Super>4']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Alt><Super>5']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Alt><Super>6']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Alt><Super>7']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Alt><Super>8']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Alt><Super>9']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Alt><Super>10']"

	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super>1']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super>2']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super>3']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super>4']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Super>5']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Super>6']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Super>7']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Super>8']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Super>9']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Super>10']"


}


##
### Tail: gnome-flashback / keybind / workspace
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	gnome_flashback_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
