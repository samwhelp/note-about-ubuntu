#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome_shell
##
gnome_shell_config_install () {

	echo
	echo "## Config: gnome_shell"
	echo

	gnome_shell_set_wallpaper

	gnome_shell_set_theme


	gnome_shell_set_desktop_corner_behavior

	gnome_shell_set_keybindings_screensaver

	#gnome_shell_set_keybindings_switch_monitor

	#gnome_shell_set_keybindings_pip



	gnome_shell_set_keybindings_start_here

	#gnome_shell_set_keybindings_terminal

	#gnome_shell_set_keybindings_volume_control



	gnome_shell_set_keybindings_about_window



	gnome_shell_set_keybindings_about_workspace



	gnome_shell_set_keybindings_adjustment



	gnome_shell_set_keybindings_custom

return

	echo
}

gnome_shell_set_wallpaper () {

	echo
	echo "### gnome_shell_set_wallpaper"
	echo

	## Wallpaper
	echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'"
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'

	echo "gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'"
	gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'

	echo "gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'"
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'

	echo

}


gnome_shell_set_theme () {

	echo
	echo "### gnome_shell_set_theme"
	echo

	#gnome_shell_set_theme_reset
	#gnome_shell_set_theme_yaru_blue_dark
	gnome_shell_set_theme_yaru_prussiangreen_dark
	#gnome_shell_set_theme_elementary
	#gnome_shell_set_theme_gruvbox
	#gnome_shell_set_theme_dracula
	#gnome_shell_set_theme_nordic
	#gnome_shell_set_theme_matcha_dark_aliz
}


gnome_shell_set_theme_reset () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings reset org.gnome.desktop.wm.preferences theme"
	gsettings reset org.gnome.desktop.wm.preferences theme

	echo "gsettings reset org.gnome.desktop.interface gtk-theme"
	gsettings reset org.gnome.desktop.interface gtk-theme

	echo "gsettings reset org.gnome.desktop.interface icon-theme"
	gsettings reset org.gnome.desktop.interface icon-theme

	echo "gsettings reset org.gnome.desktop.interface cursor-theme"
	gsettings reset org.gnome.desktop.interface cursor-theme


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##


	##
	## $ ls /usr/share/themes/ -1
	##
	## ```
	## Default
	## Emacs
	## io.elementary.stylesheet.banana
	## io.elementary.stylesheet.blueberry
	## io.elementary.stylesheet.bubblegum
	## io.elementary.stylesheet.cocoa
	## io.elementary.stylesheet.grape
	## io.elementary.stylesheet.lime
	## io.elementary.stylesheet.mint
	## io.elementary.stylesheet.orange
	## io.elementary.stylesheet.slate
	## io.elementary.stylesheet.strawberry
	## Raleigh
	## ````
	##


	##
	## $ ls /usr/share/icons/ -1
	##
	## ```
	## Adwaita
	## default
	## elementary
	## gnome
	## hicolor
	## HighContrast
	## locolor
	## mozc
	## ubuntu-mono-dark
	## ubuntu-mono-light
	## ```
	##



}


gnome_shell_set_theme_yaru_prussiangreen_dark () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-prussiangreen-dark'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-prussiangreen-dark'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Yaru-prussiangreen-dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Yaru-prussiangreen-dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'"
	gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##

}

gnome_shell_set_theme_yaru_blue_dark () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-blue-dark'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-blue-dark'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Yaru-blue-dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Yaru-blue-dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'"
	gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##

}


gnome_shell_set_theme_elementary () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'"
	gsettings set org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'elementary'"
	gsettings set org.gnome.desktop.interface icon-theme 'elementary'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'elementary'"
	gsettings set org.gnome.desktop.interface cursor-theme 'elementary'


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##

}



gnome_shell_set_theme_gruvbox () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Gruvbox'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Gruvbox'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'elementary'"
	gsettings set org.gnome.desktop.interface cursor-theme 'elementary'


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##

}

gnome_shell_set_theme_dracula () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Dracula'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Dracula'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Dracula'"
	gsettings set org.gnome.desktop.interface icon-theme 'Dracula'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'elementary'"
	gsettings set org.gnome.desktop.interface cursor-theme 'elementary'


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##

}

gnome_shell_set_theme_nordic () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Nordic'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Nordic'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Nordic'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Nordic'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'elementary'"
	gsettings set org.gnome.desktop.interface cursor-theme 'elementary'


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##

}

gnome_shell_set_theme_matcha_dark_aliz () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Matcha-dark-aliz'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Matcha-dark-aliz'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Matcha-dark-aliz'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Matcha-dark-aliz'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'elementary'"
	gsettings set org.gnome.desktop.interface cursor-theme 'elementary'


	##
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	##
	## ```
	## org.gnome.desktop.wm.preferences theme 'Adwaita'
	## org.gnome.desktop.interface icon-theme 'elementary'
	## org.gnome.desktop.interface gtk-theme 'io.elementary.stylesheet.blueberry'
	## org.gnome.desktop.interface gtk-key-theme 'Default'
	## org.gnome.desktop.interface cursor-theme 'elementary'
	## org.gnome.desktop.sound theme-name 'elementary'
	## ```
	##

}


gnome_shell_set_desktop_corner_behavior () {

	echo
	echo "### gnome_shell_set_desktop_corner_behavior"
	echo


	echo "gsettings set org.gnome.desktop.interface enable-hot-corners true"
	gsettings set org.gnome.desktop.interface enable-hot-corners true


}


gnome_shell_set_keybindings_screensaver () {
	echo
	echo "### gnome_shell_set_keybindings_screensaver"
	echo

	# org.gnome.settings-daemon.plugins.media-keys screensaver ['<Super>l']


	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'"['<Super>bracketleft']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super>bracketleft']"
}


gnome_shell_set_keybindings_switch_monitor () {
	echo
	echo "### gnome_shell_set_keybindings_switch_monitor"
	echo

	# org.gnome.mutter.keybindings switch-monitor ['<Super>p', 'XF86Display']


	echo 'gsettings set org.gnome.mutter.keybindings switch-monitor "'"['<Super>bracketright', 'XF86Display']"'"'
	gsettings set org.gnome.mutter.keybindings switch-monitor "['<Super>bracketright', 'XF86Display']"
}

gnome_shell_set_keybindings_pip () {
	echo
	echo "### gnome_shell_set_keybindings_pip"
	echo

	# org.gnome_shell.desktop.gala.keybindings pip ['<Super>f']


	echo 'gsettings set org.gnome_shell.desktop.gala.keybindings pip "'"['<Super>p']"'"'
	gsettings set org.gnome_shell.desktop.gala.keybindings pip "['<Super>p']"
}




gnome_shell_set_keybindings_terminal () {

	echo
	echo "### gnome_shell_set_keybindings_terminal"
	echo

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>t']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>F4']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>F4']"

	## use custom-keybindings. please check gnome_shell_set_keybindings_custom
	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>F4']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"


}


gnome_shell_set_keybindings_volume_control () {

	echo
	echo "### gnome_shell_set_keybindings_volume_control"
	echo


	## $ gsettings list-recursively | grep 'org.gnome.settings-daemon.plugins.media-keys volume'

	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "'"['AudioLowerVolume']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['AudioLowerVolume']"


	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "'"['AudioRaiseVolume']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['AudioRaiseVolume']"

	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "'"['AudioMute']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['AudioMute']"


}


gnome_shell_set_keybindings_start_here () {

	echo
	echo "### gnome_shell_set_keybindings_start_here"
	echo

	# org.gnome.desktop.wm.keybindings panel-main-menu ['<Super>space', '<Alt>F2']



	#echo 'gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "'"['<Super>Tab', '<Alt>F2']"'"'
	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Super>Tab', '<Alt>F2']"


	#echo 'gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "'"['<Alt>F2']"'"'
	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F2']"


	#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a']"
	#gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>v', '<Super>m']"
	#gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s']"

	echo 'gsettings set org.gnome.shell.keybindings toggle-overview "'"['<Super>grave', '<Alt>k', '<Alt>Up']"'"'
	gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>grave', '<Alt>k', '<Alt>Up']"

	echo 'gsettings set org.gnome.shell.keybindings toggle-application-view "'"['<Super>Tab', '<Alt>j', '<Alt>Down']"'"'
	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>Tab', '<Alt>j', '<Alt>Down']"

}

gnome_shell_set_keybindings_about_window () {

	#gnome_shell_set_keybindings_expose_windows


	gnome_shell_set_keybindings_show_desktop

	gnome_shell_set_keybindings_switch_windows

	gnome_shell_set_keybindings_win_close

	gnome_shell_set_keybindings_toggle_fullscreen

	gnome_shell_set_keybindings_toggle_maximized

	gnome_shell_set_keybindings_minimize

	gnome_shell_set_keybindings_begin_move

	gnome_shell_set_keybindings_begin_resize

	gnome_shell_set_keybindings_toggle_above

	gnome_shell_set_keybindings_toggle_shaded

	gnome_shell_set_keybindings_raise_or_lower

	gnome_shell_set_keybindings_toggle_tiled

}

gnome_shell_set_keybindings_expose_windows () {
	echo
	echo "### gnome_shell_set_keybindings_expose_windows"
	echo

	# org.gnome_shell.desktop.gala.keybindings expose-windows ['<Super>w']
	# org.gnome_shell.desktop.gala.keybindings expose-all-windows ['<Super>a']



	echo 'gsettings set org.gnome_shell.desktop.gala.keybindings expose-windows "'"['<Alt>e']"'"'
	gsettings set org.gnome_shell.desktop.gala.keybindings expose-windows "['<Alt>e']"

	echo 'gsettings set org.gnome_shell.desktop.gala.keybindings expose-all-windows "'"['<Alt>r', '<Super>Tab']"'"'
	gsettings set org.gnome_shell.desktop.gala.keybindings expose-all-windows "['<Alt>r', '<Super>Tab']"
}

gnome_shell_set_keybindings_show_desktop () {

	echo
	echo "### gnome_shell_set_keybindings_show_desktop"
	echo

	# org.gnome.desktop.wm.keybindings show-desktop ['<Super>Down', '<Super>s']

	#echo 'gsettings set org.gnome.desktop.wm.keybindings show-desktop "'"['<Alt>d', '<Super>grave', '<Alt>j', '<Alt>Down']"'"'
	#gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Alt>d', '<Super>grave', '<Alt>j', '<Alt>Down']"


	echo 'gsettings set org.gnome.desktop.wm.keybindings show-desktop "'"['<Super>d', '<Alt>d']"'"'
	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d', '<Alt>d']"

}

gnome_shell_set_keybindings_switch_windows () {


	# gsettings list-recursively | grep Super | grep Tab
	## org.gnome.desktop.wm.keybindings switch-applications ['<Super>Tab']
	## org.gnome.desktop.wm.keybindings switch-applications-backward ['<Shift><Super>Tab']
	## org.gnome.desktop.wm.keybindings switch-group ['<Super>Above_Tab', '<Alt>Above_Tab']
	## org.gnome.desktop.wm.keybindings switch-group-backward ['<Shift><Super>Above_Tab', '<Shift><Alt>Above_Ta


	gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Alt>Tab']"
	gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Alt>grave']"


	#org.gnome.desktop.wm.keybindings switch-windows-backward ['<Alt><Shift>Tab']
	#org.gnome.desktop.wm.keybindings switch-windows ['<Alt>Tab']

	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "'"['<Super>a', '<Super>h', '<Super>Left']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a', '<Super>h', '<Super>Left']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-windows "'"['<Super>s', '<Super>l', '<Super>Right']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s', '<Super>l', '<Super>Right']"





	echo 'gsettings set org.gnome.desktop.wm.keybindings cycle-windows "'"['<Alt>Escape']"'"'
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Alt>Escape', '<Super>k', '<Super>Up']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "'"['<Super>Escape']"'"'
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Super>Escape', '<Super>j', '<Super>Down']"


	#org.gnome.desktop.wm.keybindings cycle-windows ['<Alt>Escape']
	#org.gnome.desktop.wm.keybindings cycle-windows-backward ['<Shift><Alt>Escape']

	#org.gnome.desktop.wm.keybindings cycle-panels ['<Control><Alt>Escape']
	#org.gnome.desktop.wm.keybindings cycle-panels-backward ['<Shift><Control><Alt>Escape']

}

gnome_shell_set_keybindings_win_close () {

	echo
	echo "### gnome_shell_set_keybindings_win_close"
	echo

	echo 'gsettings set org.gnome.desktop.wm.keybindings close "'"['<Super>q']"'"'
	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

}

gnome_shell_set_keybindings_toggle_fullscreen () {

	## Fullscreen
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f', 'F11']"

}

gnome_shell_set_keybindings_toggle_maximized () {

	# org.gnome.desktop.wm.keybindings toggle-maximized ['<Super>Up']

	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"

}

gnome_shell_set_keybindings_minimize () {

	#gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>h']"
	gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"

}

gnome_shell_set_keybindings_begin_move () {
	# org.gnome.desktop.wm.keybindings begin-move ['<Alt>F7']

	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e', '<Alt>F7']"
}

gnome_shell_set_keybindings_begin_resize () {

	# org.gnome.desktop.wm.keybindings begin-resize ['<Alt>F8']

	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r', '<Alt>F8']"
}

gnome_shell_set_keybindings_toggle_above () {
	# org.gnome.desktop.wm.keybindings toggle-above @as []


	#gsettings set org.gnome.desktop.wm.keybindings always-on-top "['<Super>t']"
	gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"
}

gnome_shell_set_keybindings_toggle_shaded () {
	# org.gnome.desktop.wm.keybindings toggle-shaded @as []

	gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['<Super>y']"
}

gnome_shell_set_keybindings_raise_or_lower () {
	# org.gnome.desktop.wm.keybindings raise-or-lower @as []

	gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "['<Super>m']"
}

gnome_shell_set_keybindings_toggle_tiled () {

	#gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'<Super>l'"
	#gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'<Super>]'"

	gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Super><Control>h', '<Super><Control>Left']"
	gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super><Control>l', '<Super><Control>Right']"
}





gnome_shell_set_keybindings_about_workspace () {

	## gsettings list-recursively | grep 'org.gnome.desktop.wm.keybindings switch-to-workspace'
	##  gsettings list-recursively | grep workspace | sort

	# org.gnome.desktop.wm.keybindings switch-to-workspace-down @as []
	# org.gnome.desktop.wm.keybindings switch-to-workspace-last ['<Super>End']
	# org.gnome.desktop.wm.keybindings switch-to-workspace-left ['<Super>Left']
	# org.gnome.desktop.wm.keybindings switch-to-workspace-right ['<Super>Right']
	# org.gnome.desktop.wm.keybindings switch-to-workspace-up @as []
	# org.gnome.desktop.wm.keybindings toggle-on-all-workspaces @as []
	# org.gnome.desktop.wm.preferences num-workspaces 4
	# org.gnome.desktop.wm.preferences workspace-names ['File', 'Edit', 'Web', 'Term', '']
	# org.gnome.mutter dynamic-workspaces true
	# org.gnome.mutter workspaces-only-on-primary true

	#org.gnome_shell.desktop.gala.keybindings cycle-workspaces-next ['<Super>Tab']
	#org.gnome_shell.desktop.gala.keybindings cycle-workspaces-previous ['<Super><Shift>Tab']



	## Workspace
	#gsettings set org.gnome.mutter dynamic-workspaces true

	gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5
	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"


	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Super>End', '<Alt>z']"

	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up', '<Control><Alt>Up', '<Alt>k']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down', '<Control><Alt>Down', '<Alt>j']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>h', '<Alt>Left']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>l', '<Alt>Right']"

	#gsettings set org.gnome_shell.desktop.gala.keybindings cycle-workspaces-previous "['']"
	#gsettings set org.gnome_shell.desktop.gala.keybindings cycle-workspaces-next "['']"



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





gnome_shell_set_keybindings_adjustment () {


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


	#echo 'gsettings set org.gnome.desktop.wm.keybindings unmaximize "'"['<Alt>F5']"'"'
	#gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Alt>F5']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings unmaximize "'"['']"'"'
	gsettings set org.gnome.desktop.wm.keybindings unmaximize "['']"





	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'

	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'

	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action ''"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action ''




}

gnome_shell_set_keybindings_custom () {

	## Custom Keybindings
	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-fn/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor-fn/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser-fn/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-fn/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/toggle-show-desktop/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/overlay-action/']"


	##
	## $ gsettings list-recursively org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/
	##
	## ```
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding command ''
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding name ''
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding binding ''
	## ```
	##
	## $ gsettings list-recursively org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
	##
	##


	## Clear old
	#dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/

	## Dump all
	#dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/






	## File Manager
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-fn/name "'File_Manager-Fn'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-fn/command "'io.elementary.files'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-fn/binding "'<Super>F1'"


	## Text Editor
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor-fn/name "'Text_Editor-Fn'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor-fn/command "'io.elementary.code'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor-fn/binding "'<Super>F2'"

	## Web Browser
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser-fn/name "'Web_Browser-Fn'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser-fn/command "'firefox --new-tab about:blank'"
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser-fn/command "'wmctrl -x -a firefox'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser-fn/binding "'<Super>F3'"

	## Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-fn/name "'Terminal-Fn'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-fn/command "'io.elementary.terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-fn/binding "'<Super>F4'"






	## Wallpaper Shuf
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/name "'Wallpaper_Shuf'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/command "'wallpaper-select-gnome shuf_favorite'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/binding "'<Alt>w'"

	## Wallpaper Default
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/name "'Wallpaper_Default'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/command "'wallpaper-select-gnome default'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/binding "'<Control><Alt>w'"





	## Toggle Show Desktop
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/toggle-show-desktop/name "'Toggle_Show_Desktop'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/toggle-show-desktop/command "'toggle-show-desktop.sh'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/toggle-show-desktop/binding "'<Super>d'"



	## Settings Shortcuts
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/name "'Settings_Shortcuts'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/command "'io.elementary.switchboard settings://input/keyboard/shortcuts'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/binding "'<Shift><Alt>s'"





	## Rofi Show Run
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/name "'Rofi_Show_Run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/command "'rofi -show run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/binding "'<Shift><Alt>r'"

	## Rofi Show Window
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/name "'Rofi_Show_Window'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/command "'rofi -show window -show-icons'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/binding "'<Shift><Alt>w'"

	## Rofi Show Drun
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/name "'Rofi_Show_Drun'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/command "'rofi -show drun -show-icons'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/binding "'<Shift><Alt>d'"






	## Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'sakura -m'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"

	## Terminal-1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command "'sakura -m'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding "'<Shift><Alt>a'"

	## Terminal-2
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/name "'Terminal-2'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/command "'xfce4-terminal --maximize'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/binding "'<Control><Alt>a'"

	## Terminal-3
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/name "'Terminal-3'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/command "'xterm'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/binding "'<Shift><Alt>t'"

	## Terminal-4
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/name "'Terminal-4'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/command "'urxvt'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/binding "'<Control><Alt>t'"




	## Text Editor
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/command "'mousepad'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/binding "'<Shift><Alt>e'"

	## Web Browser
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/command "'firefox --new-tab about:blank'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/binding "'<Shift><Alt>b'"

	## File Manager
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/name "'File_Manager'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/command "'pcmanfm-qt'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/binding "'<Shift><Alt>f'"

	## File_Manager-1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/name "'File_Manager-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/command "'thunar'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/binding "'<Shift><Alt>g'"



	## Volume Control
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/name "'Volume_Control'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/command "'mate-volume-control'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/binding "'<Shift><Alt>v'"


	## Volume Toggle Mute
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/name "'Volume_Toggle_Mute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/command "'amixer -q -D pulse sset Master toggle'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/binding "'<Alt>m'"

	## Volume Decrease
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/name "'Volume_Decrease'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/command "'amixer -q -D pulse sset Master 5%- unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/binding "'<Shift><Alt>comma'"

	## Volume Increase
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/name "'Volume_Decrease'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/command "'amixer -q -D pulse sset Master 5%+ unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/binding "'<Shift><Alt>period'"

	## Volume Decrease Slowly
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/name "'Volume_Decrease_Slowly'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/command "'amixer -q -D pulse sset Master 1%- unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/binding "'<Control><Alt>comma'"

	## Volume Increase Slowly
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/name "'Volume_Increase_Slowly'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/command "'amixer -q -D pulse sset Master 1%+ unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/binding "'<Control><Alt>period'"





	## Overlay_Action
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/overlay-action/name "'Overlay_Action'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/overlay-action/command "'io.elementary.shortcut-overlay'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/overlay-action/binding "'<Alt>F1'"






	echo
	echo "##"
	echo "## Dump: keybindings_custom"
	echo "##"
	echo
	echo "dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/"
	echo
	dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
	echo

}

##
### Tail: gnome_shell
################################################################################




################################################################################
### Head: thunar
##
thunar_config_install () {

	echo "## Config: thunar"
	echo

	echo "mkdir -p $HOME/.config/Thunar"
	mkdir -p "$HOME/.config/Thunar"


	echo "install -Dm644 ./config/thunar/Thunar/uca.xml $HOME/.config/Thunar/uca.xml"
	install -Dm644 "./config/thunar/Thunar/uca.xml" "$HOME/.config/Thunar/uca.xml"

	echo "install -Dm644 ./config/thunar/Thunar/accels.scm $HOME/.config/Thunar/accels.scm"
	install -Dm644 "./config/thunar/Thunar/accels.scm" "$HOME/.config/Thunar/accels.scm"

	echo

	echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
	mkdir -p "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

	echo "install -Dm644 ./config/thunar/xfce4/xfconf/xfce-perchannel-xml/thunar.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"
	install -Dm644 "./config/thunar/xfce4/xfconf/xfce-perchannel-xml/thunar.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"

	echo "install -Dm644 ./config/thunar/xfce4/helpers.rc $HOME/.config/xfce4/helpers.rc"
	install -Dm644 "./config/thunar/xfce4/helpers.rc" "$HOME/.config/xfce4/helpers.rc"


	echo
}
##
### Tail: thunar
################################################################################


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	echo "## Config: pcmanfm-qt"
	echo

	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"
	mkdir -p "$HOME/.config/pcmanfm-qt/default"

	echo "install -Dm644 ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"
	install -Dm644 "./config/pcmanfm-qt/default/settings.conf" "$HOME/.config/pcmanfm-qt/default/settings.conf"


	echo
}
##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: rofi
##
rofi_config_install () {


	echo "## Config: rofi"
	echo

	echo "mkdir -p $HOME/.config/rofi"
	mkdir -p "$HOME/.config/rofi"


	echo "install -Dm644 ./config/rofi/config.rasi $HOME/.config/rofi/config.rasi"
	install -Dm644 "./config/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"


	rofi_put_app_desktop_entry

	echo
}

rofi_put_app_desktop_entry () {

	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "install -Dm644 ./config/rofi/rofi-show-drun.desktop $HOME/.local/share/applications/rofi-show-drun.desktop"
	install -Dm644 "./config/rofi/rofi-show-drun.desktop" "$HOME/.local/share/applications/rofi-show-drun.desktop"

	echo "install -Dm644 ./config/rofi/rofi-show-run.desktop $HOME/.local/share/applications/rofi-show-run.desktop"
	install -Dm644 "./config/rofi/rofi-show-run.desktop" "$HOME/.local/share/applications/rofi-show-run.desktop"

	echo "install -Dm644 ./config/rofi/rofi-show-window.desktop $HOME/.local/share/applications/rofi-show-window.desktop"
	install -Dm644 "./config/rofi/rofi-show-window.desktop" "$HOME/.local/share/applications/rofi-show-window.desktop"

}
##
### Tail: rofi
################################################################################


################################################################################
### Head: xfce4-terminal
##
xfce4_terminal_config_install () {

	echo "## Config: xfce4-terminal"
	echo

	echo "mkdir -p $HOME/.config/xfce4/terminal"
	mkdir -p "$HOME/.config/xfce4/terminal"

	echo "install -Dm644 ./config/xfce4-terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc"
	install -Dm644 "./config/xfce4-terminal/terminalrc" "$HOME/.config/xfce4/terminal/terminalrc"

	echo
}
##
### Tail: xfce4-terminal
################################################################################


################################################################################
### Head: sakura
##
sakura_config_install () {

	echo "## Config: sakura"
	echo

	echo "mkdir -p $HOME/.config/sakura"
	mkdir -p "$HOME/.config/sakura"


	echo "install -Dm644 ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"
	install -Dm644 "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"

	#sakura_put_my_desktop_entry

	echo
}

sakura_put_my_desktop_entry () {

	echo
	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "install -Dm644 /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"
	install -Dm644 "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"

	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"
	echo
}
##
### Tail: sakura
################################################################################


################################################################################
### Head: profile
##
profile_config_install () {

	echo "## Config: profile"
	echo

	#echo "mkdir -p $HOME"
	#mkdir -p "$HOME"


	echo "install -Dm644 ./config/profile/.profile $HOME/.profile"
	install -Dm644 "./config/profile/.profile" "$HOME/.profile"


	local now=$(date +%Y%m%d_%s)

	if [ -f "$HOME/.bash_profile" ]; then
		mv "$HOME/.bash_profile" "$HOME/.bash_profile.bak.$now"
	fi

	echo
}
##
### Tail: profile
################################################################################


################################################################################
### Head: fcitx
##
fcitx_config_install () {

	echo
	echo "mkdir -p $HOME/.config/fcitx/conf"
	mkdir -p "$HOME/.config/fcitx/conf"

	echo
	echo "mkdir -p $HOME/.config/fcitx/addon"
	mkdir -p "$HOME/.config/fcitx/addon"


	echo
	echo "install -Dm644 ./config/fcitx/profile $HOME/.config/fcitx/profile"
	install -Dm644 ./config/fcitx/profile "$HOME/.config/fcitx/profile"


	echo
	echo "install -Dm644 ./config/fcitx/conf/fcitx-classic-ui.config $HOME/.config/fcitx/conf/fcitx-classic-ui.config"
	install -Dm644 ./config/fcitx/conf/fcitx-classic-ui.config "$HOME/.config/fcitx/conf/fcitx-classic-ui.config"


	echo
	echo "install -Dm644 ./config/fcitx/conf/fcitx-chewing.config $HOME/.config/fcitx/conf/fcitx-chewing.config"
	install -Dm644 ./config/fcitx/conf/fcitx-chewing.config "$HOME/.config/fcitx/conf/fcitx-chewing.config"


	echo
	echo "install -Dm644 ./config/fcitx/conf/fcitx-quickphrase.config $HOME/.config/fcitx/conf/fcitx-quickphrase.config"
	install -Dm644 ./config/fcitx/conf/fcitx-quickphrase.config "$HOME/.config/fcitx/conf/fcitx-quickphrase.config"


	echo
	echo "install -Dm644 ./config/fcitx/addon/fcitx-kimpanel-ui.conf $HOME/.config/fcitx/addon/fcitx-kimpanel-ui.conf"
	install -Dm644 ./config/fcitx/addon/fcitx-kimpanel-ui.conf "$HOME/.config/fcitx/addon/fcitx-kimpanel-ui.conf"

	echo
	echo "install -Dm644 ./config/fcitx/addon/fcitx-quickphrase.conf $HOME/.config/fcitx/addon/fcitx-quickphrase.conf"
	install -Dm644 ./config/fcitx/addon/fcitx-quickphrase.conf "$HOME/.config/fcitx/addon/fcitx-quickphrase.conf"


	echo
	echo "install -Dm644 ./config/fcitx/addon/fcitx-spell.conf $HOME/.config/fcitx/addon/fcitx-spell.conf"
	install -Dm644 ./config/fcitx/addon/fcitx-spell.conf "$HOME/.config/fcitx/addon/fcitx-spell.conf"

	fcitx_config_install_im_config


	echo
}

fcitx_config_install_im_config () {
	fcitx_config_install_im_config_by_command
	#fcitx_config_install_im_config_pam_environment
}

fcitx_config_install_im_config_by_command () {
	echo

	echo "im-config -n fcitx"
	im-config -n fcitx

	echo "cat ~/.xinputrc"
	cat ~/.xinputrc

	echo
}

fcitx_config_install_im_config_pam_environment () {

	echo
	echo "install -m 644 ./config/fcitx/.pam_environment $HOME/.pam_environment"
	install -m 644 ./config/fcitx/.pam_environment $HOME/.pam_environment

}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: qt5ct
##
qt5ct_config_install () {

	echo "## Config: qt5ct"
	echo

	echo "mkdir -p $HOME/.config/qt5ct"
	mkdir -p "$HOME/.config/qt5ct"


	echo "install -Dm644 ./config/qt5ct/qt5ct.conf $HOME/.config/qt5ct/qt5ct.conf"
	install -Dm644 "./config/qt5ct/qt5ct.conf" "$HOME/.config/qt5ct/qt5ct.conf"

	echo

}
##
### Tail: qt5ct
################################################################################


################################################################################
### Head: gtk3
##
gtk3_config_install () {

	echo "## Config: gtk3"
	echo

	echo "mkdir -p $HOME/.config/gtk-3.0"
	mkdir -p "$HOME/.config/gtk-3.0"


	echo "install -Dm644 ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
	install -Dm644 "./config/gtk3/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"

	echo

}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	echo "## Config: gtk2"
	echo

	echo "install -Dm644 ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"
	install -Dm644 "./config/gtk2/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

	echo
}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	gnome_shell_config_install

	return 0

	thunar_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	xfce4_terminal_config_install

	sakura_config_install

	fcitx_config_install

	qt5ct_config_install

	gtk3_config_install

	gtk2_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
