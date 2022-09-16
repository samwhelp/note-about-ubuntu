

################################################################################
### Head: Skel / Rule
##

skel_rule () {

	# rules
	hc unrule -F

	hc rule class=pcmanfm-qt tag=1 # move all Pcmanfm-qt to tag 1
	hc rule class=Thunar tag=1 # move all Thunar to tag 1
	hc rule class=Atom tag=2 # move all Atom to tag 2
	hc rule class=firefox tag=3 # move all Firefox to tag 3
	#hc rule class=XTerm tag=4 # move all xterms to tag 4
	#hc rule class=Sakura tag=4 # move all Sakura to tag 4

	hc rule focus=on # normally focus new clients
	hc rule floatplacement=smart
	#hc rule focus=off # normally do not focus new clients
	# give focus to most common terminals
	#hc rule class~'(.*[Rr]xvt.*|.*[Tt]erm|Konsole)' focus=on
	hc rule windowtype~'_NET_WM_WINDOW_TYPE_(DIALOG|UTILITY|SPLASH)' floating=on
	hc rule windowtype='_NET_WM_WINDOW_TYPE_DIALOG' focus=on
	hc rule windowtype~'_NET_WM_WINDOW_TYPE_(NOTIFICATION|DOCK|DESKTOP)' manage=off

	hc set tree_style '╾│ ├└╼─┐'

	# unlock, just to be sure
	hc unlock

}


##
### Tail: Skel / Rule
################################################################################
