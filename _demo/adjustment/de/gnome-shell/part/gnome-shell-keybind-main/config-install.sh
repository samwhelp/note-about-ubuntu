#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "#gsettings set Config: gnome-shell"
	echo

	gnome_shell_keybind_adjustment_config

	gnome_shell_keybind_window_config

	gnome_shell_keybind_workspace_config

	gnome_shell_keybind_start_here_config


	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / keybind / window
##

gnome_shell_keybind_window_config () {

	gnome_shell_keybind_window_config_begin_move

	gnome_shell_keybind_window_config_begin_resize

	gnome_shell_keybind_window_config_to_close

	gnome_shell_keybind_window_config_toggle_fullscreen

	gnome_shell_keybind_window_config_toggle_maximized

	gnome_shell_keybind_window_config_to_minimize

	gnome_shell_keybind_window_config_toggle_shaded

	gnome_shell_keybind_window_config_toggle_show_desktop

	gnome_shell_keybind_window_config_toggle_above

	gnome_shell_keybind_window_config_toggle_on_all_workspaces

	gnome_shell_keybind_window_config_switch_windows

	gnome_shell_keybind_window_config_to_tiling

}

gnome_shell_keybind_window_config_begin_move () {

	#gsettings set Window / Move
	echo 'gsettings set org.gnome.desktop.wm.keybindings begin-move "'"['<Super>e']"'"'
	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e']"

}

gnome_shell_keybind_window_config_begin_resize () {

	#gsettings set Window / Resize
	echo 'gsettings set org.gnome.desktop.wm.keybindings begin-resize "'"['<Super>r']"'"'
	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"

}



gnome_shell_keybind_window_config_to_close () {

	#gsettings set Window / Close
	echo 'gsettings set org.gnome.desktop.wm.keybindings close "'"['<Super>q']"'"'
	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

}


gnome_shell_keybind_window_config_toggle_fullscreen () {

	#gsettings set Window / Fullscreen
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "'"['<Super>f', 'F11']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f', 'F11']"

}


gnome_shell_keybind_window_config_toggle_maximized () {

	#gsettings set Window / Maximize
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "'"['<Super>w']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"

}


gnome_shell_keybind_window_config_to_minimize () {

	#gsettings set Window / Minimize
	echo 'gsettings set org.gnome.desktop.wm.keybindings minimize "'"['<Super>x']"'"'
	gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"

}


gnome_shell_keybind_window_config_toggle_shaded () {

	#gsettings set Window / Shade
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "'"['<Super>y']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['<Super>y']"
}


gnome_shell_keybind_window_config_toggle_show_desktop () {

	#gsettings set Window / Toggle Show Desktop
	echo 'gsettings set org.gnome.desktop.wm.keybindings show-desktop "'"['<Super>d', '<Alt>d']"'"'
	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d', '<Alt>d']"

}


gnome_shell_keybind_window_config_toggle_above () {

	#gsettings set org.gnome.desktop.wm.keybindings always-on-top "['<Super>t']"
	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-above "'"['<Super>t']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"

}


gnome_shell_keybind_window_config_toggle_on_all_workspaces () {

	echo 'gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "'"['<Super>g']"'"'
	gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "['<Super>g']"

}


gnome_shell_keybind_window_config_raise_or_lower () {

	echo 'gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "'"['<Super>n']"'"'
	gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "['<Super>n']"

}


gnome_shell_keybind_window_config_switch_windows_empty () {

	gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-panels "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]"
	gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]"
	gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]"
	gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]"
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "[]"
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "[]"




}

gnome_shell_keybind_window_config_switch_windows () {

	##
	#gsettings set $ gsettings list-recursively | grep Alt | grep Tab | grep cinnamon
	##
	#gsettings set ```
	#gsettings set org.gnome.desktop.wm.keybindings switch-group ['<Alt>Above_Tab']
	#gsettings set org.gnome.desktop.wm.keybindings switch-panels ['<Control><Alt>Tab']
	#gsettings set org.gnome.desktop.wm.keybindings switch-windows ['<Alt>Tab']
	#gsettings set ```
	##

	gnome_shell_keybind_window_config_switch_windows_empty



	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "'"['<Super>a']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-windows "'"['<Super>s']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s']"




	echo 'gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "'"['<Alt>Escape', '<Super>Left']"'"'
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Alt>Escape', '<Super>Left']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings cycle-windows "'"['<Super>Escape', '<Super>Right']"'"'
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Escape', '<Super>Right']"










}



gnome_shell_keybind_window_config_to_tiling () {



	gsettings set org.gnome.desktop.wm.keybindings maximize "['<Control><Super>Up']"
	gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Control><Super>Down']"
	gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Control><Super>Left']"
	gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Control><Super>Right']"


}




##
### Tail: gnome-shell / keybind / window
################################################################################




################################################################################
### Head: gnome-shell / keybind / workspace
##

gnome_shell_keybind_workspace_config () {

	gnome_shell_keybind_workspace_config_base

	gnome_shell_keybind_workspace_config_switch_to_workspace_cycle

	gnome_shell_keybind_workspace_config_switch_to_workspace_specific

	gnome_shell_keybind_workspace_config_move_to_workspace_specific


}

gnome_shell_keybind_workspace_config_base () {

	##
	## Workspace
	##


	#gsettings set org.gnome.shell.overrides dynamic-workspaces true
	#gsettings set org.gnome.mutter dynamic-workspaces true


	gsettings set org.gnome.shell.overrides dynamic-workspaces false
	gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5
	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"



}

gnome_shell_keybind_workspace_config_switch_to_workspace_cycle () {


	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Alt>a', '<Alt>h', '<Alt>Left']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Alt>s', '<Alt>l', '<Alt>Right']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>Left']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>Right']"


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>z']"

}

gnome_shell_keybind_workspace_config_switch_to_workspace_specific () {


	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Control><Alt>1']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Control><Alt>2']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Control><Alt>3']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Control><Alt>4']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Control><Alt>5']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Control><Alt>6']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Control><Alt>7']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Control><Alt>8']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Control><Alt>9']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Control><Alt>0']"



	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Alt>0']"


}


gnome_shell_keybind_workspace_config_move_to_workspace_specific () {


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

##
### Tail: gnome-shell / keybind / workspace
################################################################################




################################################################################
### Head: gnome-shell / keybind / start_here
##


gnome_shell_keybind_start_here_config () {

	gnome_shell_keybind_start_here_config_overview

}

gnome_shell_keybind_start_here_config_overview () {

	echo
	echo "### gnome_shell_set_keybindings_start_here"
	echo

	# org.gnome.desktop.wm.keybindings panel-main-menu ['<Super>space', '<Alt>F2']



	#echo 'gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "'"['<Super>Tab', '<Alt>F2']"'"'
	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Super>Tab', '<Alt>F2']"


	#echo 'gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "'"['<Alt>F2']"'"'
	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F2']"


	gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>m']"


	##
	## ## Overview
	##

	#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a']"
	#gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s']"


	##
	## overview / v1
	##

	echo
	echo 'gsettings set org.gnome.shell.keybindings toggle-application-view "'"['<Super>grave', '<Super>Up']"'"'
	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave', '<Super>Up']"

	echo
	echo 'gsettings set org.gnome.shell.keybindings toggle-overview "'"['<Super>Tab', '<Super>Down']"'"'
	gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Tab', '<Super>Down']"


	##
	## overview / v2
	##

	#echo
	#echo 'gsettings set org.gnome.shell.keybindings toggle-overview "'"['<Super>grave', '<Alt>Up']"'"'
	#gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>grave', '<Alt>Up']"

	#echo
	#echo 'gsettings set org.gnome.shell.keybindings toggle-application-view "'"['<Super>Tab', '<Alt>j', '<Alt>Down']"'"'
	#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>Tab', '<Alt>j', '<Alt>Down']"


	echo

}


##
### Tail: gnome-shell / keybind / start_here
################################################################################



################################################################################
### Head: gnome-shell / keybind / adjustment
##


gnome_shell_keybind_adjustment_config () {

	gnome_shell_keybind_adjustment_config_fix

}

gnome_shell_keybind_adjustment_config_fix () {

	#echo "gsettings set org.gnome.mutter overlay-key 'Super_L'"
	#gsettings set org.gnome.mutter overlay-key 'Super_L'

	#echo "gsettings set org.gnome.mutter overlay-key ''"
	#gsettings set org.gnome.mutter overlay-key ''

	echo "gsettings set org.gnome.mutter overlay-key ''"
	gsettings set org.gnome.mutter overlay-key ''

	##
	## Fix `<Alt><Shift>a` not work
	##

	echo 'gsettings set org.gnome.desktop.input-sources xkb-options "'"['']"'"'
	gsettings set org.gnome.desktop.input-sources xkb-options "['']"

	#echo 'gsettings set org.freedesktop.ibus.general.hotkey next-engine "'"['']"'"'
	#gsettings set org.freedesktop.ibus.general.hotkey next-engine "['']"

	#echo 'gsettings set org.freedesktop.ibus.general.hotkey next-engine-in-menu "'"['']"'"'
	#gsettings set org.freedesktop.ibus.general.hotkey next-engine-in-menu "['']"





	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>t']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>F4']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>F4']"



	##
	## clear '<Super>t'
	##

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"




	#gsettings set org.gnome.settings-daemon.plugins.media-keys help "['', '<Super>F1']"
	##clear '<Super>F1'
	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys help "'"['']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys help "['']"



	#echo 'gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "'"['<Super>Escape']"'"'
	#gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "['<Super>Escape']"

	echo 'gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "'"['']"'"'
	gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "['']"




	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'

	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'

	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action ''"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action ''



}


##
### Tail: gnome-shell / keybind / start_here
################################################################################



################################################################################
### Head: main
##
main_config_install () {

	gnome_shell_config_install

	return 0

}
#gsettings set start
main_config_install

##
### Tail: main
################################################################################
