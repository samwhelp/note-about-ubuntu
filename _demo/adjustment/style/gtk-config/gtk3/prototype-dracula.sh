#!/usr/bin/env bash

sed -i 's/^gtk-theme-name=.*/gtk-theme-name=Dracula/g' settings.ini
sed -i 's/^gtk-icon-theme-name=.*/gtk-icon-theme-name=Dracula/g' settings.ini
sed -i 's/^gtk-cursor-theme-name=.*/gtk-cursor-theme-name=xcursor-breeze/g' settings.ini
sed -i 's/^gtk-cursor-theme-size=.*/gtk-cursor-theme-size=24/g' settings.ini
sed -i 's/^gtk-font-name=.*/gtk-font-name=Sans 12/g' settings.ini
