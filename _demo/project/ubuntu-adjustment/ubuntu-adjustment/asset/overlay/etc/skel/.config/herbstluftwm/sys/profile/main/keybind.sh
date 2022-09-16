

################################################################################
### Head: Skel / Keybind
##

skel_keybind () {

	main_keybind_system
	main_mousebind_system

	main_keybind_application_terminal
	main_keybind_application_rofi
	main_keybind_application_favorite

	main_keybind_tag

	main_keybind_frame
	main_keybind_wallpaper

	main_keybind_window_focus
	main_keybind_window_move
	main_keybind_window_resize

	main_keybind_window_close
	main_keybind_window_fullscreen
	main_keybind_window_floating
	main_keybind_window_minimize
	main_keybind_window_pseudotile
	main_keybind_window_titletoggle

	main_keybind_volume

	main_keybind_misc
}

main_keybind_misc () {



	# The following cycles through the available layouts within a frame, but skips
	# layouts, if the layout change wouldn't affect the actual window positions.
	# I.e. if there are two windows within a frame, the grid layout is skipped.
		hc keybind Mod1-space															\
				or , and . compare tags.focus.curframe_wcount = 2						\
						 . cycle_layout +1 vertical horizontal max vertical grid		\
						 , cycle_layout +1





}

##
### Tail: Skel / Keybind
################################################################################


################################################################################
### Head: Main / Keybind / System
##

main_keybind_system () {

	hc keybind Mod1-Shift-z spawn systemctl poweroff
	hc keybind Mod1-Shift-x quit
	hc keybind Mod1-Shift-c reload

}

##
### Tail: Main / Keybind / System
################################################################################


################################################################################
### Head: Main / Mousebind / System
##

main_mousebind_system () {

	# mouse
	hc mouseunbind --all
	hc mousebind Mod1-Button1 move
	hc mousebind Mod1-Button2 zoom
	hc mousebind Mod1-Button3 resize

}

##
### Tail: Main / Mousebind / System
################################################################################


################################################################################
### Head: Main / Keybind / Application / Terminal
##

main_keybind_application_terminal () {

	# app / terminal
	hc keybind Mod1-Return spawn "${TERMINAL:-sakura}" # use your $TERMINAL with xterm as fallback
	hc keybind Mod1-Shift-a spawn sakura
	hc keybind Mod1-Control-a spawn ~/.config/herbstluftwm/bin/hlwm-focus-ctrl the_sakura
	hc keybind Mod1-Shift-t spawn xfce4-terminal
	hc keybind Mod1-Control-t spawn ~/.config/herbstluftwm/bin/hlwm-focus-ctrl the_xfce4_terminal

	#hc keybind Mod1-Shift-y spawn xfce4-terminal --drop-down
}

# main_keybind_application_terminal_old () {
# 	# app / terminal
# 	hc keybind Mod1-Return spawn "${TERMINAL:-sakura}" # use your $TERMINAL with xterm as fallback
# 	hc keybind Mod1-Shift-a spawn sakura
# 	hc keybind Mod1-Control-a spawn xfce4-terminal
# 	hc keybind Mod1-Shift-t spawn xterm
# 	hc keybind Mod1-Control-t spawn urxvt
# }

##
### Tail: Main / Keybind / Application / Terminal
################################################################################


################################################################################
### Head: Main / Keybind / Application / Rofi
##

main_keybind_application_rofi () {

	# app / rofi
	hc keybind Mod1-Shift-r spawn rofi -show run
	hc keybind Mod1-Shift-w spawn rofi rofi -show window -show-icons
	hc keybind Mod1-Shift-d spawn rofi rofi -show drun -show-icons

}

##
### Tail: Main / Keybind / Terminal / Rofi
################################################################################


################################################################################
### Head: Main / Keybind / Application / favorite
##

main_keybind_application_favorite () {

	# app / favorite / launch
	hc keybind Mod1-Shift-f spawn pcmanfm-qt
	hc keybind Mod1-Shift-g spawn thunar
	hc keybind Mod1-Shift-b spawn firefox
	hc keybind Mod1-Shift-e spawn mousepad

	# app / favorite / focus
	hc keybind Mod1-Control-f spawn ~/.config/herbstluftwm/bin/hlwm-focus-ctrl the_pcmanfm_qt
	hc keybind Mod1-Control-g spawn ~/.config/herbstluftwm/bin/hlwm-focus-ctrl the_thunar
	hc keybind Mod1-Control-b spawn ~/.config/herbstluftwm/bin/hlwm-focus-ctrl the_firefox
	hc keybind Mod1-Control-e spawn ~/.config/herbstluftwm/bin/hlwm-focus-ctrl the_atom
	hc keybind Mod1-Control-r spawn ~/.config/herbstluftwm/bin/hlwm-focus-ctrl the_mousepad



}

##
### Tail: Main / Keybind / Terminal / Favorit
################################################################################


################################################################################
### Head: Main / Keybind / Frame
##

main_keybind_frame () {

	# splitting frames
	# create an empty frame at the specified direction
	hc keybind Mod4-u	   split   bottom  0.5
	hc keybind Mod4-o	   split   right   0.5
	# let the current frame explode into subframes
	hc keybind Mod1-Control-space split explode


	hc keybind Mod4-i remove


	hc keybind Mod4-y spawn ~/.config/herbstluftwm/bin/hlwm-frame-ctrl toggle
}

##
### Tail: Main / Keybind / Frame
################################################################################


################################################################################
### Head: Main / Keybind / Wallpaper
##

main_keybind_wallpaper () {

	hc keybind Mod1-w spawn ~/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl shuf
	hc keybind Mod1-Control-w spawn ~/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl default
}

##
### Tail: Main / Keybind / Wallpaper
################################################################################


################################################################################
### Head: Main / Keybind / Tag
##

main_keybind_tag () {

	# tags
	#tag_names=( {1..9} )
	#tag_keys=( {1..9} 0 )

	tag_names=( {1..5} )
	tag_keys=( {1..5} 0 )

	hc rename default "${tag_names[0]}" || true
	for i in "${!tag_names[@]}" ; do
		hc add "${tag_names[$i]}"
		key="${tag_keys[$i]}"
		if ! [ -z "$key" ] ; then
			hc keybind "Mod1-$key" use_index "$i"
			hc keybind "Mod1-Shift-$key" move_index "$i"
			hc keybind "Mod4-$key" move_index "$i"
		fi
	done

	# cycle through tags
	#hc keybind Mod1-comma  use_index -1 --skip-visible
	#hc keybind Mod1-period use_index +1 --skip-visible


	hc keybind Mod1-a  use_index -1 --skip-visible
	hc keybind Mod1-s use_index +1 --skip-visible

	hc keybind Mod1-h  use_index -1 --skip-visible
	hc keybind Mod1-l use_index +1 --skip-visible

}

##
### Tail: Main / Keybind / Tag
################################################################################



################################################################################
### Head: Main / Keybind / Window / Focus
##

main_keybind_window_focus () {

	# focusing clients
	hc keybind Mod4-Left  focus left
	hc keybind Mod4-Down  focus down
	hc keybind Mod4-Up	focus up
	hc keybind Mod4-Right focus right
	hc keybind Mod4-h	 focus left
	hc keybind Mod4-j	 focus down
	hc keybind Mod4-k	 focus up
	hc keybind Mod4-l	 focus right



	# focus
	hc keybind Mod4-Shift-Tab cycle_all -1
	hc keybind Mod4-Tab cycle_all +1

	hc keybind Mod4-a cycle_all -1
	hc keybind Mod4-s cycle_all +1


	hc keybind Mod4-grave cycle
	hc keybind Mod4-e jumpto urgent

	hc keybind Mod1-BackSpace   cycle_monitor
}

##
### Tail: Main / Keybind / Window / Focus
################################################################################


################################################################################
### Head: Main / Keybind / Window / Move
##

main_keybind_window_move () {

	# moving clients in tiling and floating mode
	hc keybind Mod4-Shift-Left  shift left
	hc keybind Mod4-Shift-Down  shift down
	hc keybind Mod4-Shift-Up	shift up
	hc keybind Mod4-Shift-Right shift right
	hc keybind Mod4-Shift-h	 shift left
	hc keybind Mod4-Shift-j	 shift down
	hc keybind Mod4-Shift-k	 shift up
	hc keybind Mod4-Shift-l	 shift right

}

##
### Tail: Main / Keybind / Window / Move
################################################################################



################################################################################
### Head: Main / Keybind / Window / Resize
##

main_keybind_window_resize () {


	# resizing frames and floating clients
	local resize_step=0.02
	hc keybind Mod4-Control-h	   resize left +$resize_step
	hc keybind Mod4-Control-j	   resize down +$resize_step
	hc keybind Mod4-Control-k	   resize up +$resize_step
	hc keybind Mod4-Control-l	   resize right +$resize_step
	hc keybind Mod4-Control-Left	resize left +$resize_step
	hc keybind Mod4-Control-Down	resize down +$resize_step
	hc keybind Mod4-Control-Up	  resize up +$resize_step
	hc keybind Mod4-Control-Right   resize right +$resize_step

}

##
### Tail: Main / Keybind / Window / Resize
################################################################################


################################################################################
### Head: Main / Keybind / Window / Close
##

main_keybind_window_close () {

	hc keybind Mod4-q close

}

##
### Tail: Main / Keybind / Window / Close
################################################################################


################################################################################
### Head: Main / Keybind / Window / Fullscreen
##

main_keybind_window_fullscreen () {

	hc keybind Mod4-f fullscreen toggle

}

##
### Tail: Main / Keybind / Window / Fullscreen
################################################################################


################################################################################
### Head: Main / Keybind / Window / Floating
##

main_keybind_window_floating () {

	## all window floating
	hc keybind Mod4-Shift-n floating toggle

	hc keybind Mod4-grave floating toggle

	## focusing window floating
	hc keybind Mod4-n set_attr clients.focus.floating toggle

	hc keybind Mod4-Escape set_attr clients.focus.floating toggle
}

##
### Tail: Main / Keybind / Window / Floating
################################################################################


################################################################################
### Head: Main / Keybind / Window / Minimize
##

main_keybind_window_minimize () {

	hc keybind Mod4-b set_attr clients.focus.minimized true
	hc keybind Mod4-v jumpto last-minimized

}

##
### Tail: Main / Keybind / Window / Minimize
################################################################################


################################################################################
### Head: Main / Keybind / Window / PseudoTile
##

main_keybind_window_pseudotile () {

	hc keybind Mod4-p pseudotile toggle

}

##
### Tail: Main / Keybind / Window / PseudoTile
################################################################################


################################################################################
### Head: Main / Keybind / Window / TitleToggle
##

main_keybind_window_titletoggle () {

	hc keybind Mod4-t spawn ~/.config/herbstluftwm/bin/hlwm-window-ctrl title_toggle

}

##
### Tail: Main / Keybind / Window / TitleToggle
################################################################################



################################################################################
### Head: Main / Keybind / Volume
##

main_keybind_volume () {

	hc keybind Mod1-Shift-v spawn mate-volume-control


	## VolumeToggleMute
	## Alt + m
	hc keybind Mod1-m spawn amixer -q -D pulse sset Master toggle


	## VolumeDecrease
	## Alt + Shift + ,  (<)
	hc keybind Mod1-Shift-comma spawn amixer -q -D pulse sset Master 5%- unmute


	## VolumeIncrease
	## Alt + Shift + .  (>)
	hc keybind Mod1-Shift-period spawn amixer -q -D pulse sset Master 5%+ unmute


	## VolumeDecreaseSlowly
	## Alt + Ctrl + .  (>)
	hc keybind Mod1-Control-comma spawn amixer -q -D pulse sset Master 1%- unmute


	## VolumeIncreaseSlowly
	## Alt + Ctrl + .  (>)
	hc keybind Mod1-Control-period spawn amixer -q -D pulse sset Master 1%+ unmute


	##
	# collision occurs on bash emacs mode
	# * `Alt + ,`
	# * `Alt + .`
	# * http://manpages.ubuntu.com/manpages/bionic/en/man3/readline.3readline.html#default%20key%20bindings
	# * http://manpages.ubuntu.com/manpages/bionic/en/man1/bash.1.html#readline
	##


	## VolumeToggleMute
	## XF86AudioMute
	hc keybind XF86AudioMute spawn amixer -q -D pulse sset Master toggle


	## VolumeDecrease
	## XF86AudioLowerVolume
	hc keybind XF86AudioLowerVolume spawn amixer -q -D pulse sset Master 5%- unmute


	## VolumeIncrease
	## XF86AudioRaiseVolume
	hc keybind XF86AudioRaiseVolume spawn amixer -q -D pulse sset Master 5%+ unmute


}

##
### Tail: Main / Keybind / Volume
################################################################################
