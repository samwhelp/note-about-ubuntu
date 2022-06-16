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

	cinnamon_keybind_window_config_switch_windows

	cinnamon_keybind_window_config_to_tiling

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

	#gsettings set org.cinnamon.desktop.keybindings.wm switch-applications "['<Alt>Tab']"
	#gsettings set org.cinnamon.desktop.keybindings.wm switch-applications-backward "['<Alt>grave']"


	#org.cinnamon.desktop.keybindings.wm switch-windows-backward ['<Alt><Shift>Tab']
	#org.cinnamon.desktop.keybindings.wm switch-windows ['<Alt>Tab']

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "'"['<Super>a', '<Super>h']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "['<Super>a', '<Super>h']"

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "'"['<Super>s', '<Super>l']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "['<Super>s', '<Super>l']"





	#echo 'gsettings set org.cinnamon.desktop.keybindings.wm cycle-windows "'"['<Alt>Escape']"'"'
	#gsettings set org.cinnamon.desktop.keybindings.wm cycle-windows "['<Alt>Escape', '<Super>k', '<Super>Up']"

	#echo 'gsettings set org.cinnamon.desktop.keybindings.wm cycle-windows-backward "'"['<Super>Escape']"'"'
	#gsettings set org.cinnamon.desktop.keybindings.wm cycle-windows-backward "['<Super>Escape', '<Super>j', '<Super>Down']"



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


}

cinnamon_keybind_workspace_config_switch_to_workspace_cycle () {


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