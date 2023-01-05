#!/usr/bin/env bash

set -e


################################################################################
### Head: openbox
##
openbox_config_install () {

	echo "## Config: openbox"
	echo

	echo "mkdir -p $HOME/.config/openbox"
	mkdir -p "$HOME/.config/openbox"

	echo

	openbox_config_install_openboxrc_download
	openbox_config_install_openboxrc_install

	echo

	echo "install -Dm644 ./config/openbox/menu.xml $HOME/.config/openbox/menu.xml"
	install -Dm644 "./config/openbox/menu.xml" "$HOME/.config/openbox/menu.xml"


	openbox_config_install_openboxrc_change_theme "Numix"

	echo

}

openbox_config_install_openboxrc_download () {

	if [ -a "./tmp/Openboxrc_Source" ]; then
		echo
		echo "## Openboxrc Source Exists:" "./tmp/Openboxrc_Source"
		echo
		return 0
	fi

	echo
	echo "mkdir -p ./tmp"
	mkdir -p ./tmp


	##
	## * https://github.com/samwhelp/note-about-openbox
	##
	echo "git clone https://github.com/samwhelp/note-about-openbox.git ./tmp/Openboxrc_Source"
	git clone https://github.com/samwhelp/note-about-openbox.git ./tmp/Openboxrc_Source

}

openbox_config_install_openboxrc_install () {

	echo
	echo "make -C tmp/Openboxrc_Source/_demo/config/openbox-config/main install"
	echo

	make -C tmp/Openboxrc_Source/_demo/config/openbox-config/main install



	echo

}

openbox_config_install_openboxrc_change_theme () {

	echo

	## https://github.com/archcraft-os/archcraft-openbox/blob/main/files/scripts/Forest.sh

	local openbox_path="$HOME/.config/openbox"
	local namespace="http://openbox.org/3.4/rc"
	local config="$openbox_path/rc.xml"
	local theme="$1"

	# Theme
	echo xmlstarlet ed -L -N a="$namespace" -u '/a:openbox_config/a:theme/a:name' -v "$theme" "$config"
	xmlstarlet ed -L -N a="$namespace" -u '/a:openbox_config/a:theme/a:name' -v "$theme" "$config"


	#openbox --reconfigure

}

##
### Tail: openbox
################################################################################


################################################################################
### Head: xfce4
##
xfce4_config_install () {

	echo "## Config: xfce4"
	echo

	echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
	mkdir -p "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"


	echo "install -Dm644 ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"
	install -Dm644 "./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"


	echo "install -Dm644 ./config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml"
	install -Dm644 "./config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml"


	echo

}
##
### Tail: xfce4
################################################################################


################################################################################
### Head: theme
##
theme_config_install () {

	theme_config_install_wm_theme
	theme_config_install_ui_theme
	theme_config_install_icon_theme
	theme_config_install_cursor_theme

}

theme_config_install_wm_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="Matcha-sea"/>

	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Matcha-sea'"
	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Matcha-sea'

}

theme_config_install_ui_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Matcha-sea"/>

	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Matcha-sea'"
	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Matcha-sea'

}

theme_config_install_icon_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Papirus-Maia"/>

	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Maia'"
	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Maia'

}

theme_config_install_cursor_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

	## <property name="CursorThemeName" type="string" value="default"/>
	## <property name="CursorThemeSize" type="int" value="24"/>

	## <property name="CursorThemeName" type="string" value="xcursor-breeze"/>
	## <property name="CursorThemeSize" type="int" value="24"/>


	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'xcursor-breeze'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s "xcursor-breeze"

	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s "24"

}

##
### Tail: theme
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
	openbox_config_install

	return

	xfce4_config_install

	#theme_config_install

	thunar_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	xfce4_terminal_config_install

	sakura_config_install

	profile_config_install

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
