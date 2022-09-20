
$ gsettings list-recursively | grep org.gnome.Terminal.Legacy

org.gnome.Terminal.Legacy.Settings confirm-close true
org.gnome.Terminal.Legacy.Settings context-info ['numbers']
org.gnome.Terminal.Legacy.Settings default-show-menubar true
org.gnome.Terminal.Legacy.Settings headerbar @mb nothing
org.gnome.Terminal.Legacy.Settings menu-accelerator-enabled true
org.gnome.Terminal.Legacy.Settings mnemonics-enabled false
org.gnome.Terminal.Legacy.Settings new-tab-position 'last'
org.gnome.Terminal.Legacy.Settings new-terminal-mode 'window'
org.gnome.Terminal.Legacy.Settings schema-version uint32 3
org.gnome.Terminal.Legacy.Settings shell-integration-enabled true
org.gnome.Terminal.Legacy.Settings shortcuts-enabled true
org.gnome.Terminal.Legacy.Settings tab-policy 'automatic'
org.gnome.Terminal.Legacy.Settings tab-position 'top'
org.gnome.Terminal.Legacy.Settings theme-variant 'dark'
org.gnome.Terminal.Legacy.Settings unified-menu false
org.gnome.Terminal.Legacy.Keybindings close-tab '<Control><Shift>w'
org.gnome.Terminal.Legacy.Keybindings close-window '<Control><Shift>q'
org.gnome.Terminal.Legacy.Keybindings copy '<Control><Shift>c'
org.gnome.Terminal.Legacy.Keybindings copy-html 'disabled'
org.gnome.Terminal.Legacy.Keybindings detach-tab 'disabled'
org.gnome.Terminal.Legacy.Keybindings export 'disabled'
org.gnome.Terminal.Legacy.Keybindings find '<Control><Shift>F'
org.gnome.Terminal.Legacy.Keybindings find-clear '<Control><Shift>J'
org.gnome.Terminal.Legacy.Keybindings find-next '<Control><Shift>G'
org.gnome.Terminal.Legacy.Keybindings find-previous '<Control><Shift>H'
org.gnome.Terminal.Legacy.Keybindings full-screen 'F11'
org.gnome.Terminal.Legacy.Keybindings header-menu 'disabled'
org.gnome.Terminal.Legacy.Keybindings help 'disabled'
org.gnome.Terminal.Legacy.Keybindings move-tab-left '<Control><Shift>Page_Up'
org.gnome.Terminal.Legacy.Keybindings move-tab-right '<Control><Shift>Page_Down'
org.gnome.Terminal.Legacy.Keybindings new-tab '<Control><Shift>t'
org.gnome.Terminal.Legacy.Keybindings new-window '<Control><Shift>n'
org.gnome.Terminal.Legacy.Keybindings next-tab '<Control>Page_Down'
org.gnome.Terminal.Legacy.Keybindings paste '<Control><Shift>v'
org.gnome.Terminal.Legacy.Keybindings preferences 'disabled'
org.gnome.Terminal.Legacy.Keybindings prev-tab '<Control>Page_Up'
org.gnome.Terminal.Legacy.Keybindings print 'disabled'
org.gnome.Terminal.Legacy.Keybindings read-only 'disabled'
org.gnome.Terminal.Legacy.Keybindings reset 'disabled'
org.gnome.Terminal.Legacy.Keybindings reset-and-clear 'disabled'
org.gnome.Terminal.Legacy.Keybindings save-contents 'disabled'
org.gnome.Terminal.Legacy.Keybindings select-all 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-1 '<Alt>1'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-10 '<Alt>0'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-11 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-12 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-13 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-14 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-15 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-16 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-17 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-18 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-19 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-2 '<Alt>2'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-20 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-21 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-22 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-23 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-24 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-25 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-26 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-27 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-28 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-29 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-3 '<Alt>3'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-30 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-31 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-32 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-33 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-34 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-35 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-4 '<Alt>4'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-5 '<Alt>5'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-6 '<Alt>6'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-7 '<Alt>7'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-8 '<Alt>8'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-9 '<Alt>9'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-last 'disabled'
org.gnome.Terminal.Legacy.Keybindings toggle-menubar 'disabled'
org.gnome.Terminal.Legacy.Keybindings zoom-in '<Control>plus'
org.gnome.Terminal.Legacy.Keybindings zoom-normal '<Control>0'
org.gnome.Terminal.Legacy.Keybindings zoom-out '<Control>minus'

$ gsettings get org.gnome.Terminal.ProfilesList list

['b1dcc9dd-5262-4d8d-a863-c897e6d979b9']

$ gsettings get org.gnome.Terminal.ProfilesList default

'b1dcc9dd-5262-4d8d-a863-c897e6d979b9'

profile=b1dcc9dd-5262-4d8d-a863-c897e6d979b9

$ gsettings list-recursively "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"

org.gnome.Terminal.Legacy.Profile audible-bell false
org.gnome.Terminal.Legacy.Profile background-color '#ffffff'
org.gnome.Terminal.Legacy.Profile background-transparency-percent 50
org.gnome.Terminal.Legacy.Profile backspace-binding 'ascii-delete'
org.gnome.Terminal.Legacy.Profile bold-color '#000000'
org.gnome.Terminal.Legacy.Profile bold-color-same-as-fg true
org.gnome.Terminal.Legacy.Profile bold-is-bright false
org.gnome.Terminal.Legacy.Profile cell-height-scale 1.0
org.gnome.Terminal.Legacy.Profile cell-width-scale 1.0
org.gnome.Terminal.Legacy.Profile cjk-utf8-ambiguous-width 'narrow'
org.gnome.Terminal.Legacy.Profile cursor-background-color '#000000'
org.gnome.Terminal.Legacy.Profile cursor-blink-mode 'system'
org.gnome.Terminal.Legacy.Profile cursor-colors-set false
org.gnome.Terminal.Legacy.Profile cursor-foreground-color '#ffffff'
org.gnome.Terminal.Legacy.Profile cursor-shape 'block'
org.gnome.Terminal.Legacy.Profile custom-command ''
org.gnome.Terminal.Legacy.Profile default-size-columns 80
org.gnome.Terminal.Legacy.Profile default-size-rows 24
org.gnome.Terminal.Legacy.Profile delete-binding 'delete-sequence'
org.gnome.Terminal.Legacy.Profile enable-bidi true
org.gnome.Terminal.Legacy.Profile enable-shaping true
org.gnome.Terminal.Legacy.Profile enable-sixel false
org.gnome.Terminal.Legacy.Profile encoding 'UTF-8'
org.gnome.Terminal.Legacy.Profile exit-action 'close'
org.gnome.Terminal.Legacy.Profile font 'Monospace 12'
org.gnome.Terminal.Legacy.Profile foreground-color '#171421'
org.gnome.Terminal.Legacy.Profile highlight-background-color '#000000'
org.gnome.Terminal.Legacy.Profile highlight-colors-set false
org.gnome.Terminal.Legacy.Profile highlight-foreground-color '#ffffff'
org.gnome.Terminal.Legacy.Profile login-shell false
org.gnome.Terminal.Legacy.Profile palette ['#171421', '#c01c28', '#26a269', '#a2734c', '#12488b', '#a347ba', '#2aa1b3', '#d0cfcc', '#5e5c64', '#f66151', '#33da7a', '#e9ad0c', '#2a7bde', '#c061cb', '#33c7de', '#ffffff']
org.gnome.Terminal.Legacy.Profile preserve-working-directory 'safe'
org.gnome.Terminal.Legacy.Profile rewrap-on-resize true
org.gnome.Terminal.Legacy.Profile scroll-on-keystroke true
org.gnome.Terminal.Legacy.Profile scroll-on-output false
org.gnome.Terminal.Legacy.Profile scrollback-lines 10000
org.gnome.Terminal.Legacy.Profile scrollback-unlimited false
org.gnome.Terminal.Legacy.Profile scrollbar-policy 'always'
org.gnome.Terminal.Legacy.Profile text-blink-mode 'always'
org.gnome.Terminal.Legacy.Profile use-custom-command false
org.gnome.Terminal.Legacy.Profile use-system-font true
org.gnome.Terminal.Legacy.Profile use-theme-colors true
org.gnome.Terminal.Legacy.Profile use-theme-transparency true
org.gnome.Terminal.Legacy.Profile use-transparent-background false
org.gnome.Terminal.Legacy.Profile visible-name 'Unnamed'
org.gnome.Terminal.Legacy.Profile word-char-exceptions @ms nothing

$ gsettings list-keys "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"

audible-bell
background-color
background-transparency-percent
backspace-binding
bold-color
bold-color-same-as-fg
bold-is-bright
cell-height-scale
cell-width-scale
cjk-utf8-ambiguous-width
cursor-background-color
cursor-blink-mode
cursor-colors-set
cursor-foreground-color
cursor-shape
custom-command
default-size-columns
default-size-rows
delete-binding
enable-bidi
enable-shaping
enable-sixel
encoding
exit-action
font
foreground-color
highlight-background-color
highlight-colors-set
highlight-foreground-color
login-shell
palette
preserve-working-directory
rewrap-on-resize
scroll-on-keystroke
scroll-on-output
scrollback-lines
scrollback-unlimited
scrollbar-policy
text-blink-mode
use-custom-command
use-system-font
use-theme-colors
use-theme-transparency
use-transparent-background
visible-name
word-char-exceptions
