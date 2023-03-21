#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo


	cinnamon_keybind_window_config

	cinnamon_keybind_workspace_config

	cinnamon_keybind_start_here_config

	cinnamon_keybind_media_config

	return

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / keybind / window
##

cinnamon_keybind_window_config () {

	cinnamon_keybind_window_config_begin_move

	cinnamon_keybind_window_config_begin_resize

	cinnamon_keybind_window_config_to_close

	cinnamon_keybind_window_config_toggle_fullscreen

	cinnamon_keybind_window_config_toggle_maximized

	cinnamon_keybind_window_config_to_minimize

	cinnamon_keybind_window_config_toggle_shaded

	cinnamon_keybind_window_config_toggle_show_desktop

	cinnamon_keybind_window_config_toggle_above

	cinnamon_keybind_window_config_toggle_on_all_workspaces

	cinnamon_keybind_window_config_switch_windows

	cinnamon_keybind_window_config_to_tiling

	cinnamon_keybind_window_config_change_opacity

}

cinnamon_keybind_window_config_begin_move () {

	## Window / Move
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm begin-move "'"['<Super>e']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm begin-move "['<Super>e']"

}

cinnamon_keybind_window_config_begin_resize () {

	## Window / Resize
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm begin-resize "'"['<Super>r']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm begin-resize "['<Super>r']"

}



cinnamon_keybind_window_config_to_close () {

	## Window / Close
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm close "'"['<Super>q']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm close "['<Super>q']"

}


cinnamon_keybind_window_config_toggle_fullscreen () {

	## Window / Fullscreen
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "'"['<Super>f', 'F11']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "['<Super>f', 'F11']"

}


cinnamon_keybind_window_config_toggle_maximized () {

	## Window / Maximize
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm toggle-maximized "'"['<Super>w']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-maximized "['<Super>w']"


	echo 'gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "'"[]"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "[]"


}


cinnamon_keybind_window_config_to_minimize () {

	## Window / Minimize
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm minimize "'"['<Super>x']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm minimize "['<Super>x']"

}


cinnamon_keybind_window_config_toggle_shaded () {

	## Window / Shade
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm toggle-shaded "'"['<Super>y']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-shaded "['<Super>y']"
}


cinnamon_keybind_window_config_toggle_show_desktop () {

	## Window / Toggle Show Desktop
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm show-desktop "'"['<Super>d', '<Alt>d']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm show-desktop "['<Super>d', '<Alt>d']"

}


cinnamon_keybind_window_config_toggle_above () {

	#gsettings set org.cinnamon.desktop.keybindings.wm always-on-top "['<Super>t']"
	echo 'gsettings set org.cinnamon.desktop.keybindings.wm toggle-above "'"['<Super>t']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-above "['<Super>t']"

}


cinnamon_keybind_window_config_toggle_on_all_workspaces () {

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm toggle-on-all-workspaces "'"['<Super>g']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-on-all-workspaces "['<Super>g']"

}


cinnamon_keybind_window_config_switch_windows () {

	##
	## $ gsettings list-recursively | grep Alt | grep Tab | grep cinnamon
	##
	## ```
	## org.cinnamon.desktop.keybindings.wm switch-group ['<Alt>Above_Tab']
	## org.cinnamon.desktop.keybindings.wm switch-panels ['<Control><Alt>Tab']
	## org.cinnamon.desktop.keybindings.wm switch-windows ['<Alt>Tab']
	## ```
	##



	echo 'gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "'"['<Super>a', '<Super>h']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "['<Super>a', '<Super>h']"

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "'"['<Super>s', '<Super>l']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "['<Super>s', '<Super>l']"





	echo 'gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "'"['<Alt>grave']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm switch-group-backward "['<Alt>grave']"

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm switch-group "'"['<Alt>Tab']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm switch-group "['<Alt>Tab']"










}



cinnamon_keybind_window_config_to_tiling () {


	gsettings set org.cinnamon.desktop.keybindings.wm push-snap-up "['<Super><Control>Up']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-snap-down "['<Super><Control>Down']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-snap-left "['<Super><Control>Left']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-snap-right "['<Super><Control>Right']"


	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-up "['<Super>Up']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-down "['<Super>Down']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-left "['<Super>Left']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-right "['<Super>Right']"




}


cinnamon_keybind_window_config_change_opacity () {

	gsettings set org.cinnamon.desktop.keybindings.wm decrease-opacity "['<Super>bracketleft']"
	gsettings set org.cinnamon.desktop.keybindings.wm increase-opacity "['<Super>bracketright']"

}

##
### Tail: cinnamon / keybind / window
################################################################################




################################################################################
### Head: cinnamon / keybind / workspace
##

cinnamon_keybind_workspace_config () {

	cinnamon_keybind_workspace_config_base

	cinnamon_keybind_workspace_config_switch_to_workspace_cycle

	cinnamon_keybind_workspace_config_switch_to_workspace_specific

	cinnamon_keybind_workspace_config_move_to_workspace_specific


}

cinnamon_keybind_workspace_config_base () {

	gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 5
	gsettings set org.cinnamon.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"

	gsettings set org.cinnamon.muffin dynamic-workspaces false
	gsettings set org.cinnamon.muffin workspace-cycle true


	gsettings set org.cinnamon workspace-expo-view-as-grid true

}

cinnamon_keybind_workspace_config_switch_to_workspace_cycle () {

	## overview / version_1
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-up "['<Super>grave', '<Alt>k', '<Alt>Up']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-down "['<Super>Tab', '<Alt>j', '<Alt>Down']"

	## overview / version_2
	#gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-up "['<Super>Tab', '<Alt>j', '<Alt>Down']"
	#gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-down "['<Super>grave', '<Alt>k', '<Alt>Up']"

	## cycle
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-left "['<Alt>a', '<Alt>h', '<Alt>Left']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-right "['<Alt>s', '<Alt>l', '<Alt>Right']"


}

cinnamon_keybind_workspace_config_switch_to_workspace_specific () {


	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-1 "['<Alt>1']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-2 "['<Alt>2']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-3 "['<Alt>3']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-4 "['<Alt>4']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-5 "['<Alt>5']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-6 "['<Alt>6']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-7 "['<Alt>7']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-8 "['<Alt>8']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-9 "['<Alt>9']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-10 "['<Alt>0']"

}


cinnamon_keybind_workspace_config_move_to_workspace_specific () {


	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Shift><Alt>exclam']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Shift><Alt>at']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Shift><Alt>numbersign']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Shift><Alt>dollar']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Shift><Alt>percent']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Shift><Alt>asciicircum']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Shift><Alt>ampersand']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Shift><Alt>asterisk']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Shift><Alt>parenleft']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Shift><Alt>parenright']"



}


cinnamon_keybind_workspace_config_demo () {


	## Workspace
	gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 5
	gsettings set org.cinnamon.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"

	gsettings set org.cinnamon.muffin dynamic-workspaces false
	gsettings set org.cinnamon.muffin workspace-cycle true




	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-left "['<Alt>a', '<Alt>h', '<Alt>Left']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-right "['<Alt>s', '<Alt>l', '<Alt>Right']"





	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-1 "['<Alt>1']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-2 "['<Alt>2']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-3 "['<Alt>3']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-4 "['<Alt>4']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-5 "['<Alt>5']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-6 "['<Alt>6']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-7 "['<Alt>7']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-8 "['<Alt>8']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-9 "['<Alt>9']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-10 "['<Alt>0']"

	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Shift><Alt>exclam']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Shift><Alt>at']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Shift><Alt>numbersign']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Shift><Alt>dollar']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Shift><Alt>percent']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Shift><Alt>asciicircum']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Shift><Alt>ampersand']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Shift><Alt>asterisk']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Shift><Alt>parenleft']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Shift><Alt>parenright']"

	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Alt><Super>1']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Alt><Super>2']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Alt><Super>3']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Alt><Super>4']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Alt><Super>5']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Alt><Super>6']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Alt><Super>7']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Alt><Super>8']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Alt><Super>9']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Alt><Super>10']"

	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Super>1']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Super>2']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Super>3']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Super>4']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Super>5']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Super>6']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Super>7']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Super>8']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Super>9']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Super>10']"


}


##
### Tail: cinnamon / keybind / workspace
################################################################################




################################################################################
### Head: cinnamon / keybind / start_here
##


cinnamon_keybind_start_here_config () {

	echo
	echo "### cinnamon_keybind_start_here_config"
	echo

	cinnamon_keybind_start_here_config_run_dialog

	cinnamon_keybind_start_here_config_looking_glass

	cinnamon_keybind_start_here_config_show_desklets

}

cinnamon_keybind_start_here_config_run_dialog () {

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm panel-run-dialog "'"['<Alt>F2', '<Alt><Shift>i']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm panel-run-dialog "['<Alt>F2', '<Alt><Shift>i']"

}


cinnamon_keybind_start_here_config_looking_glass () {

	echo 'gsettings set org.cinnamon.desktop.keybindings looking-glass-keybinding "'"['<Alt>F3', '<Alt><Shift>l']"'"'
	gsettings set org.cinnamon.desktop.keybindings looking-glass-keybinding "['<Alt>F3', '<Alt><Shift>l']"


}

cinnamon_keybind_start_here_config_show_desklets () {

	echo 'gsettings set org.cinnamon.desktop.keybindings show-desklets "'"['<Alt><Control>s']"'"'
	gsettings set org.cinnamon.desktop.keybindings show-desklets "['<Alt><Control>s']"


}

##
### Tail: cinnamon / keybind / start_here
################################################################################




################################################################################
### Head: cinnamon / keybind / media
##


cinnamon_keybind_media_config () {

	echo
	echo "### cinnamon_keybind_media_config"
	echo

	cinnamon_keybind_media_config_home

	cinnamon_keybind_media_config_terminal

	cinnamon_keybind_media_config_video

}

cinnamon_keybind_media_config_home () {

	##
	## Primary
	## Control
	##

	echo 'gsettings set org.cinnamon.desktop.keybindings.media-keys home "'"['<Alt><Control>e', 'XF86Explorer']"'"'
	gsettings set org.cinnamon.desktop.keybindings.media-keys home "['<Alt><Control>e', 'XF86Explorer']"

}


cinnamon_keybind_media_config_terminal () {

	echo 'gsettings set org.cinnamon.desktop.keybindings.media-keys terminal "'"['<Alt><Control>t']"'"'
	gsettings set org.cinnamon.desktop.keybindings.media-keys terminal "['<Alt><Control>t']"


}


cinnamon_keybind_media_config_video () {

	echo 'gsettings set org.cinnamon.desktop.keybindings.media-keys video-rotation-lock "'"['<Alt><Control>o']"'"'
	gsettings set org.cinnamon.desktop.keybindings.media-keys video-rotation-lock "['<Alt><Control>o']"

	echo 'gsettings set org.cinnamon.desktop.keybindings.media-keys video-outputs "'"['<Alt><Control>p', 'XF86Display']"'"'
	gsettings set org.cinnamon.desktop.keybindings.media-keys video-outputs "['<Alt><Control>p', 'XF86Display']"


}


##
### Tail: cinnamon / keybind / media
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	cinnamon_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
