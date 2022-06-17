#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	echo
	echo "## Config: mate"
	echo


	mate_keybind_window_config

	mate_keybind_workspace_config


	return

	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / keybind / window
##

mate_keybind_window_config () {

	mate_keybind_window_config_begin_move

	mate_keybind_window_config_begin_resize

	mate_keybind_window_config_to_close

	mate_keybind_window_config_toggle_fullscreen

	mate_keybind_window_config_toggle_maximized

	mate_keybind_window_config_to_minimize

	mate_keybind_window_config_toggle_shaded

	mate_keybind_window_config_toggle_show_desktop

	mate_keybind_window_config_toggle_above

	mate_keybind_window_config_switch_windows

	mate_keybind_window_config_to_tiling

}

mate_keybind_window_config_begin_move () {

	## Window / Move
	echo "gsettings set org.mate.Marco.window-keybindings begin-move '<Super>e'"
	gsettings set org.mate.Marco.window-keybindings begin-move '<Super>e'

}

mate_keybind_window_config_begin_resize () {

	## Window / Resize
	echo "gsettings set org.mate.Marco.window-keybindings begin-resize '<Super>r'"
	gsettings set org.mate.Marco.window-keybindings begin-resize '<Super>r'

}



mate_keybind_window_config_to_close () {

	## Window / Close
	echo "gsettings set org.mate.Marco.window-keybindings close '<Super>q'"
	gsettings set org.mate.Marco.window-keybindings close '<Super>q'

}


mate_keybind_window_config_toggle_fullscreen () {

	## Window / Fullscreen
	echo "gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Super>f'"
	gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Super>f'

}


mate_keybind_window_config_toggle_maximized () {

	## Window / Maximize
	echo "gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Super>w'"
	gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Super>w'

}


mate_keybind_window_config_to_minimize () {

	## Window / Minimize
	echo "gsettings set org.mate.Marco.window-keybindings minimize '<Super>x'"
	gsettings set org.mate.Marco.window-keybindings minimize '<Super>x'

}


mate_keybind_window_config_toggle_shaded () {

	## Window / Shade
	echo "gsettings set org.mate.Marco.window-keybindings toggle-shaded '<Super>y"
	gsettings set org.mate.Marco.window-keybindings toggle-shaded '<Super>y'
}


mate_keybind_window_config_toggle_show_desktop () {

	## Window / Toggle Show Desktop
	echo "gsettings set org.mate.Marco.global-keybindings show-desktop '<Super>d'"
	gsettings set org.mate.Marco.global-keybindings show-desktop '<Super>d'

}


mate_keybind_window_config_toggle_above () {

	echo "gsettings set org.mate.Marco.window-keybindings toggle-above '<Super>t'"
	gsettings set org.mate.Marco.window-keybindings toggle-above '<Super>t'

}









mate_keybind_window_config_switch_windows () {

	##
	## $ gsettings list-recursively | grep Alt | grep Tab | grep mate
	##
	## ```
	## org.mate.desktop.keybindings.wm switch-group ['<Alt>Above_Tab']
	## org.mate.desktop.keybindings.wm switch-panels ['<Control><Alt>Tab']
	## org.mate.desktop.keybindings.wm switch-windows ['<Alt>Tab']
	## ```
	##

	#echo "gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Alt>grave'"
	#gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Alt>grave'

	#echo "gsettings set org.mate.Marco.global-keybindings switch-group '<Alt>Tab"
	#gsettings set org.mate.Marco.global-keybindings switch-group '<Alt>Tab'


	echo "gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Super>grave'"
	gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Super>grave'

	echo "gsettings set org.mate.Marco.global-keybindings switch-group '<Super>Tab"
	gsettings set org.mate.Marco.global-keybindings switch-group '<Super>Tab'




	echo "gsettings set org.mate.Marco.global-keybindings switch-windows-backward '<Super>a"
	gsettings set org.mate.Marco.global-keybindings switch-windows-backward '<Super>a'

	echo "gsettings set org.mate.Marco.global-keybindings switch-windows '<Super>s'"
	gsettings set org.mate.Marco.global-keybindings switch-windows '<Super>s'





	echo "gsettings set org.mate.Marco.global-keybindings cycle-windows '<Alt>Escape'"
	gsettings set org.mate.Marco.global-keybindings cycle-windows '<Alt>Escape'

	echo "gsettings set org.mate.Marco.global-keybindings cycle-windows-backward '<Super>Escape'"
	gsettings set org.mate.Marco.global-keybindings cycle-windows-backward '<Super>Escape'



}



mate_keybind_window_config_to_tiling () {


	gsettings set org.mate.Marco.window-keybindings move-to-center '<Super>m'


	gsettings set org.mate.Marco.window-keybindings move-to-side-n 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-side-s 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-side-e 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-side-w 'disabled'

	gsettings set org.mate.Marco.window-keybindings move-to-corner-nw 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-corner-ne 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-corner-sw 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-corner-se 'disabled'



	gsettings set org.mate.Marco.window-keybindings tile-to-corner-nw '<Super><Shift>Up'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-ne '<Super><Shift>Down'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-sw '<Super><Shift>Left'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-se '<Super><Shift>Right'


	gsettings set org.mate.Marco.window-keybindings maximize '<Super>Up'
	gsettings set org.mate.Marco.window-keybindings unmaximize '<Super>Down'
	gsettings set org.mate.Marco.window-keybindings tile-to-side-e '<Super>Right'
	gsettings set org.mate.Marco.window-keybindings tile-to-side-w '<Super>Left'



}




##
### Tail: mate / keybind / window
################################################################################




################################################################################
### Head: mate / keybind / workspace
##

mate_keybind_workspace_config () {

	mate_keybind_workspace_config_base

	mate_keybind_workspace_config_switch_to_workspace_cycle

	mate_keybind_workspace_config_switch_to_workspace_specific

	mate_keybind_workspace_config_move_to_workspace_specific


}

mate_keybind_workspace_config_base () {


	gsettings set org.mate.Marco.general num-workspaces 5
	gsettings set org.mate.Marco.workspace-names name-1 'File'
	gsettings set org.mate.Marco.workspace-names name-2 'Edit'
	gsettings set org.mate.Marco.workspace-names name-3 'Web'
	gsettings set org.mate.Marco.workspace-names name-4 'Term'
	gsettings set org.mate.Marco.workspace-names name-5 'Misc'



	gsettings set org.mate.Marco.global-keybindings rename-workspace '<Alt>r'


}

mate_keybind_workspace_config_switch_to_workspace_cycle () {

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-up 'disabled'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-down 'disabled'

	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-up '<Alt>grave'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-down '<Alt>Tab'

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-left '<Alt>a'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-right '<Alt>s'

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev '<Alt>z'

}

mate_keybind_workspace_config_switch_to_workspace_specific () {


	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-1 '<Alt>1'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-2 '<Alt>2'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-3 '<Alt>3'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-4 '<Alt>4'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-5 '<Alt>5'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-6 '<Alt>6'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-7 '<Alt>7'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-8 '<Alt>8'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-9 '<Alt>9'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-10 '<Alt>0'

}


mate_keybind_workspace_config_move_to_workspace_specific () {


	gsettings set org.mate.Marco.window-keybindings move-to-workspace-1 '<Shift><Alt>exclam'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-2 '<Shift><Alt>at'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-3 '<Shift><Alt>numbersign'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-4 '<Shift><Alt>dollar'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-5 '<Shift><Alt>percent'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-6 '<Shift><Alt>asciicircum'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-7 '<Shift><Alt>ampersand'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-8 '<Shift><Alt>asterisk'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-9 '<Shift><Alt>parenleft'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-10 '<Shift><Alt>parenright'



}

##
### Tail: mate / keybind / workspace
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	mate_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
