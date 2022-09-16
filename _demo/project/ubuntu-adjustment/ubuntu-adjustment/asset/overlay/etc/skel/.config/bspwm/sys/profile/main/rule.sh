

################################################################################
### Head: Skel / Rule
##

skel_rule () {

	##
	## rules
	##

	bspc rule -a pcmanfm-qt desktop='^1' follow=on
	bspc rule -a Thunar desktop='^1' follow=on
	bspc rule -a Nautilus desktop='^1' follow=on
	bspc rule -a Pcmanfm desktop='^1' follow=on
	bspc rule -a Spacefm desktop='^1' follow=on


	bspc rule -a Atom desktop='^2' follow=on
	#bspc rule -a Mousepad desktop='^2' follow=on
	#bspc rule -a Gedit desktop='^2' follow=on


	bspc rule -a firefox desktop='^3' follow=on
	bspc rule -a Firefox desktop='^3' follow=on
	bspc rule -a Chromium-browser desktop='^3' follow=on
	bspc rule -a Chromium desktop='^3'
	bspc rule -a Google-chrome='^3' follow=on


	#bspc rule -a Sakura desktop='^4' follow=on
	#bspc rule -a Xfce4-terminal desktop='^4' follow=on
	#bspc rule -a Gnome-terminal desktop='^4' follow=on


	#bspc rule -a Gimp desktop='^5' state=floating follow=on
	#bspc rule -a Gimp-2.8 desktop='^5' state=floating follow=on
	#bspc rule -a Gimp-2.8 desktop='^5' follow=on
	#bspc rule -a Soffice desktop='^5' follow=on
	#bspc rule -a Audacious desktop='^5' follow=on
	#bspc rule -a mpv desktop='^5' follow=on
	#bspc rule -a vlc desktop='^5' follow=on
	#bspc rule -a smplayer desktop='^5' follow=on
	#bspc rule -a mplayer2 state=floating
	#bspc rule -a Kupfer.py focus=on
	#bspc rule -a Screenkey manage=off

}


##
### Tail: Skel / Rule
################################################################################
