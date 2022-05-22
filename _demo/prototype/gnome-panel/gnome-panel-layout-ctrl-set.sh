#!/usr/bin/env bash


util_gnome_panel_set_layout () {

dconf reset -f /org/gnome/gnome-panel/

#gsettings set org.gnome.gnome-panel.general default-layout "stand-alone-bottom"
gsettings set org.gnome.gnome-panel.general default-layout "$1"

exec gnome-panel --replace &

}

util_gnome_panel_set_layout "$@"
