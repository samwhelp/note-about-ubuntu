#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_set_keybindings_custom

	return 0

	echo
}











cinnamon_set_keybindings_custom () {




	##
	## $ gsettings list-recursively org.cinnamon.desktop.keybindings.custom-keybinding:/
	##
	## ```
	## org.cinnamon.desktop.keybindings.custom-keybinding binding @as []
	## org.cinnamon.desktop.keybindings.custom-keybinding command ''
	## org.cinnamon.desktop.keybindings.custom-keybinding name ''
	## ```
	##
	## $ gsettings list-recursively org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/
	##
	##


	## Clear old
	dconf reset -f /org/cinnamon/desktop/keybindings/custom-keybindings/

	## Dump all
	#dconf dump /org/cinnamon/desktop/keybindings/custom-keybindings/








	## Wallpaper Shuf
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/wallpaper-shuf/name "'Wallpaper_Shuf'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/wallpaper-shuf/command "'wallpaper-select-gnome shuf_favorite'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/wallpaper-shuf/binding "['<Alt>w']"

	## Wallpaper Default
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/wallpaper-default/name "'Wallpaper_Default'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/wallpaper-default/command "'wallpaper-select-gnome default'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/wallpaper-default/binding "['<Control><Alt>w']"





	## Settings Shortcuts
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/settings-shortcuts/name "'Settings_Shortcuts'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/settings-shortcuts/command "'cinnamon-settings keyboard'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/settings-shortcuts/binding "['<Shift><Alt>s']"





	## Rofi Show Run
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-run/name "'Rofi_Show_Run'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-run/command "'rofi -show run'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-run/binding "['<Shift><Alt>r']"

	## Rofi Show Window
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-window/name "'Rofi_Show_Window'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-window/command "'rofi -show window -show-icons'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-window/binding "['<Shift><Alt>w']"

	## Rofi Show Drun
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-drun/name "'Rofi_Show_Drun'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-drun/command "'rofi -show drun -show-icons'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/rofi-show-drun/binding "['<Shift><Alt>d']"






	## Terminal
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal/command "'sakura -m'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal/binding "['<Alt>Return']"

	## Terminal-1
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-1/command "'sakura -m'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-1/binding "['<Shift><Alt>a']"

	## Terminal-2
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-2/name "'Terminal-2'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-2/command "'xfce4-terminal --maximize'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-2/binding "['<Control><Alt>a']"

	## Terminal-3
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-3/name "'Terminal-3'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-3/command "'xterm'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-3/binding "['<Shift><Alt>t']"

	## Terminal-4
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-4/name "'Terminal-4'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-4/command "'urxvt'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal-4/binding "['<Control><Alt>t']"




	## Text Editor
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/text-editor/command "'mousepad'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/text-editor/binding "['<Shift><Alt>e']"

	## Web Browser
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/web-browser/command "'falkon --new-tab about:blank'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/web-browser/binding "['<Shift><Alt>b']"

	## File Manager
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager/name "'File_Manager'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager/command "'pcmanfm-qt'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager/binding "['<Shift><Alt>f']"

	## File_Manager-1
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager-1/name "'File_Manager-1'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager-1/command "'thunar'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager-1/binding "['<Shift><Alt>g']"



	## Volume Control
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-control/name "'Volume_Control'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-control/command "'mate-volume-control'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-control/binding "['<Shift><Alt>v']"


	## Volume Toggle Mute
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-toggle-mute/name "'Volume_Toggle_Mute'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-toggle-mute/command "'amixer -q -D pulse sset Master toggle'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-toggle-mute/binding "['<Alt>m']"

	## Volume Decrease
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-decrease/name "'Volume_Decrease'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-decrease/command "'amixer -q -D pulse sset Master 5%- unmute'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-decrease/binding "['<Shift><Alt>comma']"

	## Volume Increase
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-increase/name "'Volume_Decrease'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-increase/command "'amixer -q -D pulse sset Master 5%+ unmute'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-increase/binding "['<Shift><Alt>period']"

	## Volume Decrease Slowly
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-decrease-slowly/name "'Volume_Decrease_Slowly'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-decrease-slowly/command "'amixer -q -D pulse sset Master 1%- unmute'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-decrease-slowly/binding "['<Control><Alt>comma']"

	## Volume Increase Slowly
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-increase-slowly/name "'Volume_Increase_Slowly'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-increase-slowly/command "'amixer -q -D pulse sset Master 1%+ unmute'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/volume-increase-slowly/binding "['<Control><Alt>period']"





	## Overlay_Action
	#dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/overlay-action/name "'Overlay_Action'"
	#dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/overlay-action/command "'io.elementary.shortcut-overlay'"
	#dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/overlay-action/binding "'<Alt>F1'"




	## org.cinnamon.desktop.keybindings custom-list ['custom0', '__dummy__']
	## Custom Keybindings
	gsettings set org.cinnamon.desktop.keybindings custom-list "['__dummy__', 'wallpaper-shuf', 'wallpaper-default', 'settings-shortcuts', 'rofi-show-run', 'rofi-show-window', 'rofi-show-drun', 'terminal', 'terminal-1', 'terminal-2', 'terminal-3', 'terminal-4', 'text-editor', 'web-browser', 'file-manager', 'file-manager-1', 'volume-control', 'volume-toggle-mute', 'volume-decrease', 'volume-increase', 'volume-decrease-slowly', 'volume-increase-slowly']"


	#gsettings set org.cinnamon.desktop.keybindings custom-list "['__dummy__']"




	echo
	echo "##"
	echo "## Dump: keybindings_custom"
	echo "##"
	echo
	echo "dconf dump /org/cinnamon/desktop/keybindings/custom-keybindings/"
	echo
	dconf dump /org/cinnamon/desktop/keybindings/custom-keybindings/
	echo

}

##
### Tail: cinnamon
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
