
# picom / config

## Path

* [~/.config/picom/picom.conf](picom.conf)

## Link

* https://samwhelp.github.io/note-about-manjaro/read/adjustment/tool/picom.html
* https://github.com/jonaburg/picom/blob/next/picom.sample.conf
* https://wiki.archlinux.org/title/Picom#Opacity

## Note

```
inactive-opacity = 0.8;
```

```
frame-opacity = 0.9;
```

```
active-opacity = 0.9;
```


```
opacity-rule = [
  "95:class_g = 'Sakura' && focused",
  "70:class_g = 'Sakura' && !focused",
  "95:class_g = 'xfce4-terminal' && focused",
  "70:class_g = 'xfce4-terminal' && !focused",
  "95:class_g = 'thunar' && focused",
  "70:class_g = 'thunar' && !focused",
  "95:class_g = 'pcmanfm-qt' && focused",
  "70:class_g = 'pcmanfm-qt' && !focused",
  "95:class_g = 'Atom' && focused",
  "80:class_g = 'Atom' && !focused",
  "95:class_g = 'Mousepad' && focused",
  "80:class_g = 'Mousepad' && !focused",
  "100:class_g = 'mpv' && focused",
  "70:class_g = 'mpv' && !focused",
  "100:class_g = 'vlc' && focused",
  "70:class_g = 'vlc' && !focused",
  "100:class_g = 'smplayer' && focused",
  "70:class_g = 'smplayer' && !focused",
  "80:class_g     = 'Bar'",             # lemonbar
  "100:class_g    = 'slop'",            # maim
  "100:class_g    = 'XTerm'",
  "100:class_g    = 'URxvt'",
  "100:class_g    = 'kitty'",
  "100:class_g    = 'Alacritty'",
  "80:class_g     = 'Polybar'",
  "100:class_g    = 'code-oss'",
  "100:class_g    = 'Meld'",
  "70:class_g     = 'TelegramDesktop'",
  "90:class_g     = 'Joplin'",
  "100:class_g    = 'Firefox'",
  "100:class_g    = 'firefox'",
  "100:class_g    = 'Thunderbird'"
];
```
