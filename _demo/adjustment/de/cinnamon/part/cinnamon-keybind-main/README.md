
# Cinnamon / Adjustment


## Gschema Override

* [/usr/share/glib-2.0/schemas/50_cinnamon-keybind-main.gschema.override](config/cinnamon/schemas/50_cinnamon-keybind-main.gschema.override)
* [/usr/share/glib-2.0/schemas/50_cinnamon-workspace-main.gschema.override](config/cinnamon/schemas/50_cinnamon-workspace-main.gschema.override)


## Note


## Howto


### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```


## Dump

run

``` sh
dconf dump /org/cinnamon/desktop/keybindings/wm/
```

show

```
[/]
begin-move=['<Super>e']
begin-resize=['<Super>r']
close=['<Super>q']
lower=@as []
maximize=@as []
minimize=['<Super>x']
move-to-center=['<Super>m']
move-to-side-e=@as []
move-to-workspace-1=['<Shift><Alt>exclam']
move-to-workspace-10=['<Shift><Alt>parenright']
move-to-workspace-2=['<Shift><Alt>at']
move-to-workspace-3=['<Shift><Alt>numbersign']
move-to-workspace-4=['<Shift><Alt>dollar']
move-to-workspace-5=['<Shift><Alt>percent']
move-to-workspace-6=['<Shift><Alt>asciicircum']
move-to-workspace-7=['<Shift><Alt>ampersand']
move-to-workspace-8=['<Shift><Alt>asterisk']
move-to-workspace-9=['<Shift><Alt>parenleft']
push-snap-down=['<Super><Control>Down']
push-snap-left=['<Super><Control>Left']
push-snap-right=['<Super><Control>Right']
push-snap-up=['<Super><Control>Up']
push-tile-down=['<Super>Down']
push-tile-left=['<Super>Left']
push-tile-right=['<Super>Right']
push-tile-up=['<Super>Up']
raise=@as []
show-desktop=['<Super>d', '<Alt>d']
switch-to-workspace-1=['<Alt>1']
switch-to-workspace-10=['<Alt>0']
switch-to-workspace-2=['<Alt>2']
switch-to-workspace-3=['<Alt>3']
switch-to-workspace-4=['<Alt>4']
switch-to-workspace-5=['<Alt>5']
switch-to-workspace-6=['<Alt>6']
switch-to-workspace-7=['<Alt>7']
switch-to-workspace-8=['<Alt>8']
switch-to-workspace-9=['<Alt>9']
switch-to-workspace-left=['<Alt>a', '<Alt>h', '<Alt>Left']
switch-to-workspace-right=['<Alt>s', '<Alt>l', '<Alt>Right']
switch-windows=['<Super>s', '<Super>l']
switch-windows-backward=['<Super>a', '<Super>h']
toggle-above=['<Super>t']
toggle-fullscreen=['<Super>f', 'F11']
toggle-maximized=['<Super>w']
toggle-on-all-workspaces=['<Super>g']
toggle-shaded=['<Super>y']
unmaximize=@as []
```
