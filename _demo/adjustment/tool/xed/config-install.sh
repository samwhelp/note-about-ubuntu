#!/usr/bin/env bash

set -e


################################################################################
### Head: xed
##

xed_config_install () {
	xed_config_install_dock1_settings
}


xed_config_install_dock1_settings () {

	echo
	echo "##"
	echo "## Config: xed"
	echo "##"
	echo




	echo "gsettings set org.x.editor.preferences.editor prefer-dark-theme true"
	gsettings set org.x.editor.preferences.editor prefer-dark-theme true


	echo "gsettings set org.x.editor.preferences.editor scheme 'oblivion'"
	gsettings set org.x.editor.preferences.editor scheme 'oblivion'


	echo "gsettings set org.x.editor.preferences.editor use-default-font false"
	gsettings set org.x.editor.preferences.editor use-default-font false


	echo "gsettings set org.x.editor.preferences.editor editor-font 'Monospace 14'"
	gsettings set org.x.editor.preferences.editor editor-font 'Monospace 14'


	echo "gsettings set org.x.editor.preferences.editor insert-spaces false"
	gsettings set org.x.editor.preferences.editor insert-spaces false


	echo "gsettings set org.x.editor.preferences.editor tabs-size 4"
	gsettings set org.x.editor.preferences.editor tabs-size 4





	echo "gsettings set org.x.editor.preferences.editor highlight-current-line true"
	gsettings set org.x.editor.preferences.editor highlight-current-line true


	echo "gsettings set org.x.editor.preferences.editor display-line-numbers true"
	gsettings set org.x.editor.preferences.editor display-line-numbers true


	echo "gsettings set org.x.editor.preferences.editor display-right-margin true"
	gsettings set org.x.editor.preferences.editor display-right-margin true


	echo "gsettings set org.x.editor.preferences.editor right-margin-position 80"
	gsettings set org.x.editor.preferences.editor right-margin-position 80



	#org.x.editor.preferences.editor draw-whitespace false
	#org.x.editor.preferences.editor draw-whitespace-inside false
	#org.x.editor.preferences.editor draw-whitespace-leading false
	#org.x.editor.preferences.editor draw-whitespace-newline false
	#org.x.editor.preferences.editor draw-whitespace-trailing false


	echo "gsettings org.x.editor.preferences.editor draw-whitespace true"
	gsettings set org.x.editor.preferences.editor draw-whitespace true

	echo "gsettings org.x.editor.preferences.editor draw-whitespace-inside true"
	gsettings set org.x.editor.preferences.editor draw-whitespace-inside true

	echo "gsettings org.x.editor.preferences.editor draw-whitespace-leading true"
	gsettings set org.x.editor.preferences.editor draw-whitespace-leading true

	echo "gsettings org.x.editor.preferences.editor draw-whitespace-newline true"
	gsettings set org.x.editor.preferences.editor draw-whitespace-newline true

	echo "gsettings org.x.editor.preferences.editor draw-whitespace-trailing true"
	gsettings set org.x.editor.preferences.editor draw-whitespace-trailing true


	echo "gsettings org.x.editor.preferences.editor ensure-trailing-newline true"
	gsettings set org.x.editor.preferences.editor ensure-trailing-newline true







	echo "gsettings org.x.editor.preferences.ui side-panel-visible true"
	gsettings set org.x.editor.preferences.ui side-panel-visible true





	echo "gsettings org.x.editor.plugins.filebrowser terminal-command 'sakura'"
	gsettings set org.x.editor.plugins.filebrowser terminal-command 'sakura'



	echo
}

##
### Tail: xed
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	xed_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
