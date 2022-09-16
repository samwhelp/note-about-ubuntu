

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
	#bspc monitor -d I II III IV V VI VII VIII IX X
	#bspc monitor -d 1 2 3 4 5 6 7 8 9 10
	bspc monitor -d File Edit Web Term Misc
	#bspc monitor -d 1 2 3 4 5

	bspc config border_width         2
	bspc config window_gap          12

	bspc config split_ratio          0.52
	bspc config borderless_monocle   true
	bspc config gapless_monocle      true
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

	PATH="$HOME/.config/bspwm/bin:$PATH"

	bspwm-up
}

##
### Tail: Default / Up
################################################################################
