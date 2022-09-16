

################################################################################
### Head: Skel / Theme
##

skel_theme () {
	main_theme_setting
}

main_theme_setting () {


	# theme
	#bspc monitor -d File Edit Web Term Misc
	bspc monitor -d 1 2 3 4 5

	bspc config border_width          4
	bspc config window_gap            8

	bspc config split_ratio           0.5

	bspc config borderless_monocle    true
	bspc config gapless_monocle       true
	bspc config single_monocle        false
	bspc config focus_follows_pointer false

	bspc config normal_border_color   "#2e3440"
	bspc config active_border_color   "#3b4252"
	bspc config focused_border_color  "#8fbcbb"
	bspc config presel_feedback_color "#3b4252"

}

##
### Tail: Skel / Theme
################################################################################
