#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-text-editor
##
gnome_text_editor_config_install () {

	echo
	echo "##"
	echo "## Config: gnome-text-editor"
	echo "##"
	echo


	##
	## dconf dump / | grep 'org/gnome/TextEditor' -A 14
	##
	## gsettings list-recursively | grep org.gnome.TextEditor | sort
	##

	echo "gsettings set org.gnome.TextEditor use-system-font false"
	gsettings set org.gnome.TextEditor use-system-font false

	echo "gsettings set org.gnome.TextEditor custom-font 'Monospace 14'"
	gsettings set org.gnome.TextEditor custom-font 'Monospace 14'


	##
	## ls /usr/share/gtksourceview-5/styles/ -1
	##
	## ```
	## Adwaita-dark.xml
	## Adwaita.xml
	## classic-dark.xml
	## classic.xml
	## cobalt-light.xml
	## cobalt.xml
	## kate-dark.xml
	## kate.xml
	## oblivion.xml
	## solarized-dark.xml
	## solarized-light.xml
	## styles.rng
	## tango.xml
	## ```


	#echo "gsettings set org.gnome.TextEditor style-variant 'oblivion'"
	#gsettings set org.gnome.TextEditor style-variant 'follow'

	#echo "gsettings set org.gnome.TextEditor style-variant 'oblivion'"
	#gsettings set org.gnome.TextEditor style-variant 'light'

	echo "gsettings set org.gnome.TextEditor style-variant 'oblivion'"
	gsettings set org.gnome.TextEditor style-variant 'dark'


	#echo "gsettings set org.gnome.TextEditor style-scheme 'Adwaita-dark'"
	#gsettings set org.gnome.TextEditor style-scheme 'Adwaita-dark'

	#echo "gsettings set org.gnome.TextEditor style-scheme 'Adwaita'"
	#gsettings set org.gnome.TextEditor style-scheme 'Adwaita'

	echo "gsettings set org.gnome.TextEditor style-scheme 'oblivion'"
	gsettings set org.gnome.TextEditor style-scheme 'oblivion'



	#echo "gsettings set org.gnome.TextEditor indent-width '-1'"
	#gsettings set org.gnome.TextEditor indent-width '-1'

	#echo "gsettings set org.gnome.TextEditor indent-style 'space'"
	#gsettings set org.gnome.TextEditor indent-style 'space'

	echo "gsettings set org.gnome.TextEditor indent-style 'tab'"
	gsettings set org.gnome.TextEditor indent-style 'tab'

	echo "gsettings set org.gnome.TextEditor tab-width 4"
	gsettings set org.gnome.TextEditor tab-width 4











	echo "gsettings set org.gnome.TextEditor highlight-current-line true"
	gsettings set org.gnome.TextEditor highlight-current-line true


	echo "gsettings set org.gnome.TextEditor show-line-numbers true"
	gsettings set org.gnome.TextEditor show-line-numbers true

	echo "gsettings set org.gnome.TextEditor show-right-margin true"
	gsettings set org.gnome.TextEditor show-right-margin true

	echo "gsettings set org.gnome.TextEditor right-margin-position 80"
	gsettings set org.gnome.TextEditor right-margin-position 80

	echo "gsettings set org.gnome.TextEditor show-map true"
	gsettings set org.gnome.TextEditor show-map true

	echo "gsettings set org.gnome.TextEditor show-grid false"
	gsettings set org.gnome.TextEditor show-grid false






	echo
}



##
### Tail: gnome-text-editor
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	gnome_text_editor_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
