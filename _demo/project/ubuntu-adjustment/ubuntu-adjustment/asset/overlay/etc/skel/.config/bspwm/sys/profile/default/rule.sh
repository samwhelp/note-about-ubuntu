

################################################################################
### Head: Skel / Rule
##

skel_rule () {

	# rules
	bspc rule -a Gimp desktop='^5' state=floating follow=on
	bspc rule -a Chromium desktop='^2'
	bspc rule -a mplayer2 state=floating
	bspc rule -a Kupfer.py focus=on
	bspc rule -a Screenkey manage=off

}


##
### Tail: Skel / Rule
################################################################################
