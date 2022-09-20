#!/usr/bin/env bash

set -e


################################################################################
### Head: pluma
##
pluma_config_install () {

	echo
	echo "##"
	echo "## Config: pluma"
	echo "##"
	echo


	##
	## dconf dump / | grep 'org/mate/pluma' -A 32
	##
	## gsettings list-recursively | grep org.mate.pluma | sort
	##

	echo "gsettings set org.mate.pluma use-default-font false"
	gsettings set org.mate.pluma use-default-font false

	echo "gsettings set org.mate.pluma editor-font 'Monospace 14'"
	gsettings set org.mate.pluma editor-font 'Monospace 14'


	echo "gsettings set org.mate.pluma.plugins.pythonconsole use-system-font false"
	gsettings set org.mate.pluma.plugins.pythonconsole use-system-font false

	echo "gsettings set org.mate.pluma.plugins.pythonconsole font 'Monospace 14'"
	gsettings set org.mate.pluma.plugins.pythonconsole font 'Monospace 14'


	echo "gsettings set org.mate.pluma print-font-body-pango 'Ubuntu Mono 9'"
	gsettings set org.mate.pluma print-font-body-pango 'Ubuntu Mono 9'

	echo "gsettings set org.mate.pluma print-font-header-pango 'Ubuntu 11'"
	gsettings set org.mate.pluma print-font-header-pango 'Ubuntu 11'

	echo "gsettings set org.mate.pluma print-font-numbers-pango 'Ubuntu 8'"
	gsettings set org.mate.pluma print-font-numbers-pango 'Ubuntu 8'

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

	#echo "gsettings set org.mate.pluma color-scheme 'Yaru-dark'"
	#gsettings set org.mate.pluma color-scheme 'Yaru-dark'

	echo "gsettings set org.mate.pluma color-scheme 'oblivion'"
	gsettings set org.mate.pluma color-scheme 'oblivion'




	echo "gsettings set org.mate.pluma insert-spaces false"
	gsettings set org.mate.pluma insert-spaces false

	echo "gsettings set org.mate.pluma tabs-size 4"
	gsettings set org.mate.pluma tabs-size 4






	echo "gsettings set org.mate.pluma side-pane-visible true"
	gsettings set org.mate.pluma side-pane-visible true






	echo "gsettings set org.mate.pluma highlight-current-line true"
	gsettings set org.mate.pluma highlight-current-line true


	echo "gsettings set org.mate.pluma display-line-numbers true"
	gsettings set org.mate.pluma display-line-numbers true

	echo "gsettings set org.mate.pluma display-overview-map false"
	gsettings set org.mate.pluma display-overview-map true

	echo "gsettings set org.mate.pluma display-right-margin true"
	gsettings set org.mate.pluma display-right-margin true

	echo "gsettings set org.mate.pluma right-margin-position 80"
	gsettings set org.mate.pluma right-margin-position 80




	#echo 'gsettings set org.mate.pluma auto-detected-encodings "'"['UTF-8', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']"'"'
	#gsettings set org.mate.pluma auto-detected-encodings "['UTF-8', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

	echo 'gsettings set org.mate.pluma auto-detected-encodings "'"['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"'"'
	gsettings set org.mate.pluma auto-detected-encodings "['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"


	echo 'gsettings set org.mate.pluma shown-in-menu-encodings "'"['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"'"'
	gsettings set org.mate.pluma shown-in-menu-encodings "['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"




	echo 'gsettings set org.mate.pluma active-plugins "'"['filebrowser', 'spell', 'modelines', 'externaltools', 'docinfo', 'time']"'"'
	gsettings set org.mate.pluma active-plugins "['filebrowser', 'spell', 'modelines', 'externaltools', 'docinfo', 'time']"




	echo "gsettings set org.mate.pluma enable-space-drawer-nbsp 'show-none'"
	gsettings set org.mate.pluma enable-space-drawer-nbsp 'show-none'

	echo "gsettings set org.mate.pluma enable-space-drawer-newline false"
	gsettings set org.mate.pluma enable-space-drawer-newline false

	echo "gsettings set org.mate.pluma enable-space-drawer-space 'show-all'"
	gsettings set org.mate.pluma enable-space-drawer-space 'show-all'

	echo "gsettings set org.mate.pluma enable-space-drawer-tab 'show-trailing'"
	gsettings set org.mate.pluma enable-space-drawer-tab 'show-trailing'








	echo
}



pluma_config_install_tools () {

	echo "mkdir -p $HOME/.config/pluma/tools"
	mkdir -p "$HOME/.config/pluma/tools"

	echo "install -Dm644 ./config/pluma/config/tools/open-terminal-here $HOME/.config/pluma/tools/open-terminal-here"
	install -Dm755 "./config/pluma/config/tools/open-terminal-here" "$HOME/.config/pluma/tools/open-terminal-here"

	echo
}


##
### Tail: pluma
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	pluma_config_install
	pluma_config_install_tools
}
## start
main_config_install

##
### Tail: main
################################################################################
