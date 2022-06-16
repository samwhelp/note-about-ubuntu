#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	echo
	echo "## Config: mate"
	echo

	mate_keybind_custom_config

	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / keybind / custom
##

mate_keybind_custom_config () {




	##
	## $ gsettings list-recursively org.mate.control-center.keybinding:/
	##
	## ```
	## org.mate.control-center.keybinding action ''
	## org.mate.control-center.keybinding binding ''
	## org.mate.control-center.keybinding name ''
	## ```
	##
	## $ gsettings list-recursively org.mate.control-center.keybinding:/org/mate/desktop/keybindings/
	##
	##


	## Clear old
	dconf reset -f /org/mate/desktop/keybindings/

	## Dump all
	#dconf dump /org/mate/desktop/keybindings/





	## Logout
	dconf write /org/mate/desktop/keybindings/system-logout/name "'System_Logout'"
	dconf write /org/mate/desktop/keybindings/system-logout/action "'mate-session-save --logout-dialog'"
	dconf write /org/mate/desktop/keybindings/system-logout/binding "'<Shift><Alt>x'"

	## Shutdown
	dconf write /org/mate/desktop/keybindings/system-shutdown/name "'System_Shutdown'"
	dconf write /org/mate/desktop/keybindings/system-shutdown/action "'mate-session-save --shutdown-dialog'"
	dconf write /org/mate/desktop/keybindings/system-shutdown/binding "'<Shift><Alt>z'"




	## Wallpaper Shuf
	dconf write /org/mate/desktop/keybindings/wallpaper-shuf/name "'Wallpaper_Shuf'"
	dconf write /org/mate/desktop/keybindings/wallpaper-shuf/action "'wallpaper-select-gnome shuf_favorite'"
	dconf write /org/mate/desktop/keybindings/wallpaper-shuf/binding "'<Alt>w'"

	## Wallpaper Default
	dconf write /org/mate/desktop/keybindings/wallpaper-default/name "'Wallpaper_Default'"
	dconf write /org/mate/desktop/keybindings/wallpaper-default/action "'wallpaper-select-gnome default'"
	dconf write /org/mate/desktop/keybindings/wallpaper-default/binding "'<Control><Alt>w'"





	## Settings Shortcuts
	dconf write /org/mate/desktop/keybindings/settings-shortcuts/name "'Settings_Shortcuts'"
	dconf write /org/mate/desktop/keybindings/settings-shortcuts/action "'mate-settings keyboard'"
	dconf write /org/mate/desktop/keybindings/settings-shortcuts/binding "'<Shift><Alt>s'"





	## Rofi Show Run
	dconf write /org/mate/desktop/keybindings/rofi-show-run/name "'Rofi_Show_Run'"
	dconf write /org/mate/desktop/keybindings/rofi-show-run/action "'rofi -show run'"
	dconf write /org/mate/desktop/keybindings/rofi-show-run/binding "'<Shift><Alt>r'"

	## Rofi Show Window
	dconf write /org/mate/desktop/keybindings/rofi-show-window/name "'Rofi_Show_Window'"
	dconf write /org/mate/desktop/keybindings/rofi-show-window/action "'rofi -show window -show-icons'"
	dconf write /org/mate/desktop/keybindings/rofi-show-window/binding "'<Shift><Alt>w'"

	## Rofi Show Drun
	dconf write /org/mate/desktop/keybindings/rofi-show-drun/name "'Rofi_Show_Drun'"
	dconf write /org/mate/desktop/keybindings/rofi-show-drun/action "'rofi -show drun -show-icons'"
	dconf write /org/mate/desktop/keybindings/rofi-show-drun/binding "'<Shift><Alt>d'"






	## Terminal
	dconf write /org/mate/desktop/keybindings/terminal/name "'Terminal'"
	dconf write /org/mate/desktop/keybindings/terminal/action "'sakura -m'"
	dconf write /org/mate/desktop/keybindings/terminal/binding "'<Alt>Return'"

	## Terminal-1
	dconf write /org/mate/desktop/keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/mate/desktop/keybindings/terminal-1/action "'sakura -m'"
	dconf write /org/mate/desktop/keybindings/terminal-1/binding "'<Shift><Alt>a'"

	## Terminal-2
	dconf write /org/mate/desktop/keybindings/terminal-2/name "'Terminal-2'"
	dconf write /org/mate/desktop/keybindings/terminal-2/action "'xfce4-terminal --maximize'"
	dconf write /org/mate/desktop/keybindings/terminal-2/binding "'<Control><Alt>a'"

	## Terminal-3
	dconf write /org/mate/desktop/keybindings/terminal-3/name "'Terminal-3'"
	dconf write /org/mate/desktop/keybindings/terminal-3/action "'xterm'"
	dconf write /org/mate/desktop/keybindings/terminal-3/binding "'<Shift><Alt>t'"

	## Terminal-4
	dconf write /org/mate/desktop/keybindings/terminal-4/name "'Terminal-4'"
	dconf write /org/mate/desktop/keybindings/terminal-4/action "'urxvt'"
	dconf write /org/mate/desktop/keybindings/terminal-4/binding "'<Control><Alt>t'"




	## Text Editor
	dconf write /org/mate/desktop/keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/mate/desktop/keybindings/text-editor/action "'mousepad'"
	dconf write /org/mate/desktop/keybindings/text-editor/binding "'<Shift><Alt>e'"

	## Web Browser
	dconf write /org/mate/desktop/keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/mate/desktop/keybindings/web-browser/action "'falkon --new-tab about:blank'"
	dconf write /org/mate/desktop/keybindings/web-browser/binding "'<Shift><Alt>b'"

	## File Manager
	dconf write /org/mate/desktop/keybindings/file-manager/name "'File_Manager'"
	dconf write /org/mate/desktop/keybindings/file-manager/action "'pcmanfm-qt'"
	dconf write /org/mate/desktop/keybindings/file-manager/binding "'<Shift><Alt>f'"

	## File_Manager-1
	dconf write /org/mate/desktop/keybindings/file-manager-1/name "'File_Manager-1'"
	dconf write /org/mate/desktop/keybindings/file-manager-1/action "'thunar'"
	dconf write /org/mate/desktop/keybindings/file-manager-1/binding "'<Shift><Alt>g'"



	## Volume Control
	dconf write /org/mate/desktop/keybindings/volume-control/name "'Volume_Control'"
	dconf write /org/mate/desktop/keybindings/volume-control/action "'mate-volume-control'"
	dconf write /org/mate/desktop/keybindings/volume-control/binding "'<Shift><Alt>v'"


	## Volume Toggle Mute
	dconf write /org/mate/desktop/keybindings/volume-toggle-mute/name "'Volume_Toggle_Mute'"
	dconf write /org/mate/desktop/keybindings/volume-toggle-mute/action "'amixer -q -D pulse sset Master toggle'"
	dconf write /org/mate/desktop/keybindings/volume-toggle-mute/binding "'<Alt>m'"

	## Volume Decrease
	dconf write /org/mate/desktop/keybindings/volume-decrease/name "'Volume_Decrease'"
	dconf write /org/mate/desktop/keybindings/volume-decrease/action "'amixer -q -D pulse sset Master 5%- unmute'"
	dconf write /org/mate/desktop/keybindings/volume-decrease/binding "'<Shift><Alt>comma'"

	## Volume Increase
	dconf write /org/mate/desktop/keybindings/volume-increase/name "'Volume_Decrease'"
	dconf write /org/mate/desktop/keybindings/volume-increase/action "'amixer -q -D pulse sset Master 5%+ unmute'"
	dconf write /org/mate/desktop/keybindings/volume-increase/binding "'<Shift><Alt>period'"

	## Volume Decrease Slowly
	dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/name "'Volume_Decrease_Slowly'"
	dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/action "'amixer -q -D pulse sset Master 1%- unmute'"
	dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/binding "'<Control><Alt>comma'"

	## Volume Increase Slowly
	dconf write /org/mate/desktop/keybindings/volume-increase-slowly/name "'Volume_Increase_Slowly'"
	dconf write /org/mate/desktop/keybindings/volume-increase-slowly/action "'amixer -q -D pulse sset Master 1%+ unmute'"
	dconf write /org/mate/desktop/keybindings/volume-increase-slowly/binding "'<Control><Alt>period'"





	## Overlay_Action
	#dconf write /org/mate/desktop/keybindings/overlay-action/name "'Overlay_Action'"
	#dconf write /org/mate/desktop/keybindings/overlay-action/action "'io.elementary.shortcut-overlay'"
	#dconf write /org/mate/desktop/keybindings/overlay-action/binding "'<Alt>F1'"




	## org.mate.desktop.keybindings custom-list ['custom0', '__dummy__']
	## Custom Keybindings
	#gsettings set org.mate.desktop.keybindings custom-list "['__dummy__', 'system-logout', 'system-shutdown', 'wallpaper-shuf', 'wallpaper-default', 'settings-shortcuts', 'rofi-show-run', 'rofi-show-window', 'rofi-show-drun', 'terminal', 'terminal-1', 'terminal-2', 'terminal-3', 'terminal-4', 'text-editor', 'web-browser', 'file-manager', 'file-manager-1', 'volume-control', 'volume-toggle-mute', 'volume-decrease', 'volume-increase', 'volume-decrease-slowly', 'volume-increase-slowly']"


	#gsettings set org.mate.desktop.keybindings custom-list "['__dummy__']"




	echo
	echo "##"
	echo "## Dump: keybindings_custom"
	echo "##"
	echo
	echo "dconf dump /org/mate/desktop/keybindings/"
	echo
	dconf dump /org/mate/desktop/keybindings/
	echo



}

##
### Tail: mate / keybind / custom
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
