#!/usr/bin/env bash

set -e


################################################################################
### Head: org_gnome_gedit
##
org_gnome_gedit_config_install () {

	echo
	echo "##"
	echo "## Config: org_gnome_gedit"
	echo "##"
	echo


	##
	## dconf dump / | grep gedit -A 10
	##
	## gsettings list-recursively | grep org.gnome.gedit | sort
	##

	echo "gsettings set org.gnome.gedit.preferences.editor use-default-font false"
	gsettings set org.gnome.gedit.preferences.editor use-default-font false

	echo "gsettings set org.gnome.gedit.preferences.editor editor-font 'Monospace 14'"
	gsettings set org.gnome.gedit.preferences.editor editor-font 'Monospace 14'


	echo "gsettings set org.gnome.gedit.plugins.externaltools use-system-font false"
	gsettings set org.gnome.gedit.plugins.externaltools use-system-font false

	echo "gsettings set org.gnome.gedit.plugins.externaltools font 'Monospace 14'"
	gsettings set org.gnome.gedit.plugins.externaltools font 'Monospace 14'


	echo "gsettings set org.gnome.gedit.plugins.pythonconsole use-system-font false"
	gsettings set org.gnome.gedit.plugins.pythonconsole use-system-font false

	echo "gsettings set org.gnome.gedit.plugins.pythonconsole font 'Monospace 14'"
	gsettings set org.gnome.gedit.plugins.pythonconsole font 'Monospace 14'


	##
	## ls /usr/share/gtksourceview-4/styles/ -1
	##
	## ```
	## classic.xml
	## cobalt.xml
	## kate.xml
	## oblivion.xml
	## solarized-dark.xml
	## solarized-light.xml
	## styles.rng
	## tango.xml
	## Yaru-dark.xml
	## Yaru.xml
	## ```
	##

	#echo "gsettings set org.gnome.gedit.preferences.editor scheme 'Yaru-dark'"
	#gsettings set org.gnome.gedit.preferences.editor scheme 'Yaru-dark'

	echo "gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'"
	gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'




	echo "gsettings set org.gnome.gedit.preferences.editor insert-spaces false"
	gsettings set org.gnome.gedit.preferences.editor insert-spaces false

	echo "gsettings set org.gnome.gedit.preferences.editor tabs-size 4"
	gsettings set org.gnome.gedit.preferences.editor tabs-size 4






	echo "gsettings set org.gnome.gedit.preferences.ui side-panel-visible true"
	gsettings set org.gnome.gedit.preferences.ui side-panel-visible true

	echo "gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditFileBrowserPanel'"
	gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditFileBrowserPanel'

	#echo "gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditWindowDocumentsPanel'"
	#gsettings set org.gnome.gedit.state.window side-panel-active-page 'GeditWindowDocumentsPanel'






	echo "gsettings set org.gnome.gedit.preferences.editor highlight-current-line true"
	gsettings set org.gnome.gedit.preferences.editor highlight-current-line true


	echo "gsettings set org.gnome.gedit.preferences.editor display-line-numbers true"
	gsettings set org.gnome.gedit.preferences.editor display-line-numbers true

	echo "gsettings set org.gnome.gedit.preferences.editor display-overview-map false"
	gsettings set org.gnome.gedit.preferences.editor display-overview-map false

	echo "gsettings set org.gnome.gedit.preferences.editor display-right-margin true"
	gsettings set org.gnome.gedit.preferences.editor display-right-margin true





	echo 'gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "'"['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"'"'
	gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"




	echo 'gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "'"['filebrowser', 'quickhighlight', 'modelines', 'sort', 'externaltools', 'openlinks', 'docinfo', 'pythonconsole', 'spell']"'"'
	gsettings set org.gnome.gedit.plugins active-plugins "['filebrowser', 'quickhighlight', 'modelines', 'sort', 'externaltools', 'openlinks', 'docinfo', 'pythonconsole', 'spell']"




	echo
}



org_gnome_gedit_config_install_tools () {

	echo "mkdir -p $HOME/.config/gedit/tools"
	mkdir -p "$HOME/.config/gedit/tools"

	echo "install -Dm644 ./config/gedit/config/tools/open-terminal-here $HOME/.config/gedit/tools/open-terminal-here"
	install -Dm755 "./config/gedit/config/tools/open-terminal-here" "$HOME/.config/gedit/tools/open-terminal-here"

	echo
}


##
### Tail: org_gnome_gedit
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	org_gnome_gedit_config_install
	org_gnome_gedit_config_install_tools
}
## start
main_config_install

##
### Tail: main
################################################################################
