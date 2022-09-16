

################################################################################
### Head: Skel / Keybind
##

skel_keybind () {

	Mod="Mod1"

	hc keybind $Mod-Shift-q quit
	hc keybind $Mod-Shift-r reload
	hc keybind $Mod-Shift-c close
	hc keybind $Mod-Return spawn "${TERMINAL:-sakura}" # use your $TERMINAL with xterm as fallback

	# basic movement in tiling and floating mode
	# focusing clients
	hc keybind $Mod-Left  focus left
	hc keybind $Mod-Down  focus down
	hc keybind $Mod-Up    focus up
	hc keybind $Mod-Right focus right
	hc keybind $Mod-h     focus left
	hc keybind $Mod-j     focus down
	hc keybind $Mod-k     focus up
	hc keybind $Mod-l     focus right

	# moving clients in tiling and floating mode
	hc keybind $Mod-Shift-Left  shift left
	hc keybind $Mod-Shift-Down  shift down
	hc keybind $Mod-Shift-Up    shift up
	hc keybind $Mod-Shift-Right shift right
	hc keybind $Mod-Shift-h     shift left
	hc keybind $Mod-Shift-j     shift down
	hc keybind $Mod-Shift-k     shift up
	hc keybind $Mod-Shift-l     shift right

	# splitting frames
	# create an empty frame at the specified direction
	hc keybind $Mod-u       split   bottom  0.5
	hc keybind $Mod-o       split   right   0.5
	# let the current frame explode into subframes
	hc keybind $Mod-Control-space split explode

	# resizing frames and floating clients
	resizestep=0.02
	hc keybind $Mod-Control-h       resize left +$resizestep
	hc keybind $Mod-Control-j       resize down +$resizestep
	hc keybind $Mod-Control-k       resize up +$resizestep
	hc keybind $Mod-Control-l       resize right +$resizestep
	hc keybind $Mod-Control-Left    resize left +$resizestep
	hc keybind $Mod-Control-Down    resize down +$resizestep
	hc keybind $Mod-Control-Up      resize up +$resizestep
	hc keybind $Mod-Control-Right   resize right +$resizestep

	# tags
	tag_names=( {1..5} )
	tag_keys=( {1..5} 0 )

	hc rename default "${tag_names[0]}" || true
	for i in "${!tag_names[@]}" ; do
	    hc add "${tag_names[$i]}"
	    key="${tag_keys[$i]}"
	    if ! [ -z "$key" ] ; then
	        hc keybind "$Mod-$key" use_index "$i"
	        hc keybind "$Mod-Shift-$key" move_index "$i"
	    fi
	done

	# cycle through tags
	hc keybind $Mod-period use_index +1 --skip-visible
	hc keybind $Mod-comma  use_index -1 --skip-visible

	# layouting
	hc keybind $Mod-r remove
	hc keybind $Mod-s floating toggle
	hc keybind $Mod-f fullscreen toggle
	hc keybind $Mod-Shift-f set_attr clients.focus.floating toggle
	hc keybind $Mod-Shift-m set_attr clients.focus.minimized true
	hc keybind $Mod-Control-m jumpto last-minimized
	hc keybind $Mod-p pseudotile toggle
	# The following cycles through the available layouts within a frame, but skips
	# layouts, if the layout change wouldn't affect the actual window positions.
	# I.e. if there are two windows within a frame, the grid layout is skipped.
	hc keybind $Mod-space                                                           \
	            or , and . compare tags.focus.curframe_wcount = 2                   \
	                     . cycle_layout +1 vertical horizontal max vertical grid    \
	               , cycle_layout +1

	# mouse
	hc mouseunbind --all
	hc mousebind $Mod-Button1 move
	hc mousebind $Mod-Button2 zoom
	hc mousebind $Mod-Button3 resize

	# focus
	hc keybind $Mod-BackSpace   cycle_monitor
	hc keybind $Mod-Tab         cycle_all +1
	hc keybind $Mod-Shift-Tab   cycle_all -1
	hc keybind $Mod-c cycle
	hc keybind $Mod-i jumpto urgent

	# app / terminal
	hc keybind $Mod-Shift-a spawn sakura
	hc keybind $Mod-Control-a spawn xfce4-terminal
	hc keybind $Mod-Shift-t spawn xterm
	hc keybind $Mod-Control-t spawn urxvt

	# app / rofi
	#hc keybind $Mod-Shift-r spawn rofi -show run
	hc keybind $Mod-Shift-w spawn rofi rofi -show window -show-icons
	hc keybind $Mod-Shift-d spawn rofi rofi -show drun -show-icons

	# app / favorite
	#hc keybind $Mod-Shift-f spawn pcmanfm-qt
	hc keybind $Mod-Shift-g spawn pcmanfm-qt
	hc keybind $Mod-Shift-b spawn firefox
	hc keybind $Mod-Shift-e spawn mousepad


	# frame
	hc keybind $Mod-y spawn ~/.config/herbstluftwm/bin/hlwm-frame-ctrl toggle

	# window title
	hc keybind $Mod-t spawn ~/.config/herbstluftwm/bin/hlwm-window-ctrl title_toggle

	# wallpaper
	hc keybind $Mod-w spawn ~/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl shuf
	hc keybind $Mod-Control-w spawn ~/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl default


	# Volume

	## Volume Control
	## Alt + Shift + v
	hc keybind $Mod-Shift-v spawn mate-volume-control

	## VolumeToggleMute
	## Alt + m
	hc keybind $Mod-m spawn amixer -q -D pulse sset Master toggle

	## VolumeDecrease
	## Alt + Shift + ,  (<)
	hc keybind $Mod-Shift-comma spawn amixer -q -D pulse sset Master 5%- unmute

	## VolumeIncrease
	## Alt + Shift + .  (>)
	hc keybind $Mod-Shift-period spawn amixer -q -D pulse sset Master 5%+ unmute

	## VolumeDecreaseSlowly
	## Alt + Ctrl + .  (>)
	hc keybind $Mod-Control-comma spawn amixer -q -D pulse sset Master 1%- unmute

	## VolumeIncreaseSlowly
	## Alt + Ctrl + .  (>)
	hc keybind $Mod-Control-period spawn amixer -q -D pulse sset Master 1%+ unmute

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
### Tail: Skel / Keybind
################################################################################
