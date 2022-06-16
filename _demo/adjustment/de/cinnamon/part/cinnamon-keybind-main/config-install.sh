#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo



	#cinnamon_set_desktop_corner_behavior

	#cinnamon_keybind_set_screensaver

	#cinnamon_keybind_set_switch_monitor

	#cinnamon_keybind_set_pip



	#cinnamon_keybind_set_start_here

	#cinnamon_keybind_set_terminal

	#cinnamon_keybind_set_volume_control



	cinnamon_keybind_window_config

	cinnamon_keybind_workspace_config


	#cinnamon_keybind_set_adjustment




	return

	echo
}




cinnamon_set_desktop_corner_behavior () {

	echo
	echo "### cinnamon_set_desktop_corner_behavior"
	echo


	echo "gsettings set org.gnome.desktop.interface enable-hot-corners true"
	gsettings set org.gnome.desktop.interface enable-hot-corners true


}


cinnamon_keybind_set_screensaver () {
	echo
	echo "### cinnamon_keybind_set_screensaver"
	echo

	# org.gnome.settings-daemon.plugins.media-keys screensaver ['<Super>l']


	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'"['<Super>bracketleft']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super>bracketleft']"
}


cinnamon_keybind_set_switch_monitor () {
	echo
	echo "### cinnamon_keybind_set_switch_monitor"
	echo

	# org.gnome.mutter.keybindings switch-monitor ['<Super>p', 'XF86Display']


	echo 'gsettings set org.gnome.mutter.keybindings switch-monitor "'"['<Super>bracketright', 'XF86Display']"'"'
	gsettings set org.gnome.mutter.keybindings switch-monitor "['<Super>bracketright', 'XF86Display']"
}

cinnamon_keybind_set_pip () {
	echo
	echo "### cinnamon_keybind_set_pip"
	echo

	# org.cinnamon.desktop.gala.keybindings pip ['<Super>f']


	echo 'gsettings set org.cinnamon.desktop.gala.keybindings pip "'"['<Super>p']"'"'
	gsettings set org.cinnamon.desktop.gala.keybindings pip "['<Super>p']"
}




cinnamon_keybind_set_terminal () {

	echo
	echo "### cinnamon_keybind_set_terminal"
	echo

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>t']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>F4']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>F4']"

	## use custom-keybindings. please check cinnamon_keybind_set_custom
	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>F4']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"


}


cinnamon_keybind_set_volume_control () {

	echo
	echo "### cinnamon_keybind_set_volume_control"
	echo


	## $ gsettings list-recursively | grep 'org.gnome.settings-daemon.plugins.media-keys volume'

	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "'"['AudioLowerVolume']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['AudioLowerVolume']"


	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "'"['AudioRaiseVolume']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['AudioRaiseVolume']"

	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "'"['AudioMute']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['AudioMute']"


}


cinnamon_keybind_set_start_here () {

	echo
	echo "### cinnamon_keybind_set_start_here"
	echo

	# org.cinnamon.desktop.keybindings.wm panel-main-menu ['<Super>space', '<Alt>F2']



	#echo 'gsettings set org.cinnamon.desktop.keybindings.wm panel-main-menu "'"['<Super>Tab', '<Alt>F2']"'"'
	#gsettings set org.cinnamon.desktop.keybindings.wm panel-main-menu "['<Super>Tab', '<Alt>F2']"


	#echo 'gsettings set org.cinnamon.desktop.keybindings.wm panel-main-menu "'"['<Alt>F2']"'"'
	#gsettings set org.cinnamon.desktop.keybindings.wm panel-main-menu "['<Alt>F2']"


	#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a']"
	#gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>v', '<Super>m']"
	#gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s']"

	echo 'gsettings set org.gnome.shell.keybindings toggle-overview "'"['<Super>grave', '<Alt>k', '<Alt>Up']"'"'
	gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>grave', '<Alt>k', '<Alt>Up']"

	echo 'gsettings set org.gnome.shell.keybindings toggle-application-view "'"['<Super>Tab', '<Alt>j', '<Alt>Down']"'"'
	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>Tab', '<Alt>j', '<Alt>Down']"

}












cinnamon_keybind_set_adjustment () {


	#echo "gsettings set org.gnome.mutter overlay-key 'Super_L'"
	#gsettings set org.gnome.mutter overlay-key 'Super_L'

	#echo "gsettings set org.gnome.mutter overlay-key ''"
	#gsettings set org.gnome.mutter overlay-key ''

	echo "gsettings set org.gnome.mutter overlay-key ''"
	gsettings set org.gnome.mutter overlay-key ''

	## Fix `<Alt><Shift>a` not work

	echo 'gsettings set org.gnome.desktop.input-sources xkb-options "'"['']"'"'
	gsettings set org.gnome.desktop.input-sources xkb-options "['']"


	echo 'gsettings set org.freedesktop.ibus.general.hotkey next-engine "'"['']"'"'
	gsettings set org.freedesktop.ibus.general.hotkey next-engine "['']"

	echo 'gsettings set org.freedesktop.ibus.general.hotkey next-engine-in-menu "'"['']"'"'
	gsettings set org.freedesktop.ibus.general.hotkey next-engine-in-menu "['']"



	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>t']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>F4']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>F4']"

	# clear '<Super>t'
	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"




	#gsettings set org.gnome.settings-daemon.plugins.media-keys help "['', '<Super>F1']"
	##clear '<Super>F1'
	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys help "'"['']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys help "['']"



	#echo 'gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "'"['<Super>Escape']"'"'
	#gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "['<Super>Escape']"

	echo 'gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "'"['']"'"'
	gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "['']"


	#echo 'gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "'"['<Alt>F5']"'"'
	#gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "['<Alt>F5']"

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "'"['']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "['']"





	#echo "gsettings set org.cinnamon.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'"
	#gsettings set org.cinnamon.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'

	#echo "gsettings set org.cinnamon.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'"
	#gsettings set org.cinnamon.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'

	#echo "gsettings set org.cinnamon.desktop.gala.behavior overlay-action ''"
	#gsettings set org.cinnamon.desktop.gala.behavior overlay-action ''




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

	#cinnamon_keybind_set_switch_windows


	#cinnamon_keybind_set_raise_or_lower

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

	echo 'gsettings set org.cinnamon.desktop.keybindings.wm toggle-shaded "'"['<Super>y']"'"'
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-shaded "['<Super>y']"
}


cinnamon_keybind_window_config_toggle_show_desktop () {

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




cinnamon_keybind_set_expose_windows () {
	echo
	echo "### cinnamon_keybind_set_expose_windows"
	echo

	# org.cinnamon.desktop.gala.keybindings expose-windows ['<Super>w']
	# org.cinnamon.desktop.gala.keybindings expose-all-windows ['<Super>a']



	echo 'gsettings set org.cinnamon.desktop.gala.keybindings expose-windows "'"['<Alt>e']"'"'
	gsettings set org.cinnamon.desktop.gala.keybindings expose-windows "['<Alt>e']"

	echo 'gsettings set org.cinnamon.desktop.gala.keybindings expose-all-windows "'"['<Alt>r', '<Super>Tab']"'"'
	gsettings set org.cinnamon.desktop.gala.keybindings expose-all-windows "['<Alt>r', '<Super>Tab']"
}



cinnamon_keybind_set_raise_or_lower () {
	# org.cinnamon.desktop.keybindings.wm raise-or-lower @as []

	gsettings set org.cinnamon.desktop.keybindings.wm raise-or-lower "['<Super>m']"
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
