

################################################################################
### Head: Skel / Theme
##

skel_theme () {
	nord_aurora_theme_setting
	nord_aurora_theme_frame_hide
	nord_aurora_theme_window_title_hide
}

nord_aurora_theme_setting () {

	##
	## ## Gruvbox
	## * https://github.com/morhetz/gruvbox
	##

	# theme
	hc attr theme.tiling.reset 1
	hc attr theme.floating.reset 1
	hc set frame_border_active_color '#a89984'
	hc set frame_border_normal_color '#282828'
	hc set frame_bg_active_color '#a89984'
	hc set frame_bg_normal_color '#282828'
	hc set frame_border_width 0 ## 1
	hc set always_show_frame on
	hc set frame_bg_transparent on
	hc set frame_transparent_width 0 ## 5
	hc set frame_gap 4

	hc attr theme.title_height 0 ## 15
	hc attr theme.title_font 'Noto Sans CJK TC:pixelsize=12'  # example using Xft
	#hc attr theme.title_font 'Dejavu Sans:pixelsize=12'  # example using Xft
	# hc attr theme.title_font '-*-fixed-medium-r-*-*-13-*-*-*-*-*-*-*'
	hc attr theme.padding_top 2  # space below the title's baseline (i.e. text depth)
	hc attr theme.urgent.color '#98971a'
	hc attr theme.active.color '#a89984'
	hc attr theme.normal.color '#282828'
	hc attr theme.title_color '#ebdbb2'
	hc attr theme.normal.title_color '#928374'
	hc attr theme.inner_width 1
	hc attr theme.inner_color black
	hc attr theme.border_width 3
	hc attr theme.floating.border_width 4
	hc attr theme.floating.outer_width 1
	hc attr theme.floating.outer_color black
	hc attr theme.urgent.inner_color '#98971a'
	hc attr theme.active.inner_color '#a89984'
	hc attr theme.normal.inner_color '#282828'
	# copy inner color to outer_color
	for state in active urgent normal ; do
		hc substitute C theme.${state}.inner_color \
			attr theme.${state}.outer_color C
	done
	hc attr theme.active.outer_width 1
	##hc attr theme.background_color '#141414'
	#hc attr theme.background_color '#00000000'
	hc attr theme.background_color '#666666'

	hc set window_gap 8
	hc set frame_padding 0
	hc set smart_window_surroundings off
	hc set smart_frame_surroundings on
	hc set mouse_recenter_gap 0

}

nord_aurora_theme_frame_hide () {
	~/.config/herbstluftwm/bin/hlwm-frame-ctrl hide
}

nord_aurora_theme_window_title_hide () {
	~/.config/herbstluftwm/bin/hlwm-window-ctrl title_hide
}

##
### Tail: Skel / Theme
################################################################################
