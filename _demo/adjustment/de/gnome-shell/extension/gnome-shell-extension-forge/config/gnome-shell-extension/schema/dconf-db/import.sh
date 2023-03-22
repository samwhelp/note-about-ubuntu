#!/usr/bin/env bash

dconf reset -f /org/gnome/shell/extensions/forge/ 

dconf load /org/gnome/shell/extensions/forge/ < 50_gnome-shell-extension-forge.conf

