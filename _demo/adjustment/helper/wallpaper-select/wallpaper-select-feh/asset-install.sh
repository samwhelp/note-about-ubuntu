#!/usr/bin/env bash

set -e


################################################################################
### Head: wallpaper_select_feh
##
wallpaper_select_feh_asset_install () {

	echo "## Config: wallpaper_select_feh"
	echo

	echo "wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-feh/remote-install.sh' -q -O - | bash"
	wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-feh/remote-install.sh' -q -O - | bash


	echo
}

##
### Tail: wallpaper_select_feh
################################################################################


################################################################################
### Head: main
##
main_asset_install () {
	wallpaper_select_feh_asset_install
}
## start
main_asset_install

##
### Tail: main
################################################################################
