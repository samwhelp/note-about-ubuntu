

################################################################################
### Head: Default / Init / Util
##

default_reset () {

	xsetroot -cursor_name left_ptr

}


default_modkey_init () {
	# keybindings
	# if you have a super key you will be much happier with Mod set to Mod4
	Mod=Mod1    # Use alt as the main modifier
	#Mod=Mod4   # Use the super key as the main modifier
}

##
### Tail: Default / Init / Util
################################################################################


################################################################################
### Head: Default / Keybind
##

default_keybind () {
	local fake=""
}

##
### Tail: Default / Keybind
################################################################################


################################################################################
### Head: Default / Theme
##

default_theme () {
	# theme
	
	return 0
}


##
### Tail: Default / Theme
################################################################################


################################################################################
### Head: Default / Rule
##

default_rule () {
	# rules
	bspc rule -a Gimp desktop='^8' state=floating follow=on
	bspc rule -a Chromium desktop='^2'
	bspc rule -a mplayer2 state=floating
	bspc rule -a Kupfer.py focus=on
	bspc rule -a Screenkey manage=off
}


##
### Tail: Default / Rule
################################################################################


################################################################################
### Head: Default / Up
##

default_monitor () {

	# do multi monitor setup here, e.g.:
	# hc set_monitors 1280x1024+0+0 1280x1024+1280+0
	# or simply:
	# hc detect_monitors

	return 0
}

##
### Tail: Default / Up
################################################################################


################################################################################
### Head: Default / Up
##

default_up () {

	PATH="$HOME/.config/i3/bin:$PATH"

	i3wm-up
}

##
### Tail: Default / Up
################################################################################
