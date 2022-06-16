
# gnome-shell-extension-ubuntu-dock




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

## Explore

run

``` sh
gsettings list-recursively | grep dock | sort
```

or

run

``` sh
gsettings list-recursively | grep org.gnome.shell.extensions.dash-to-dock | sort
```

show

```
org.gnome.shell.extensions.dash-to-dock activate-single-window true
org.gnome.shell.extensions.dash-to-dock animate-show-apps true
org.gnome.shell.extensions.dash-to-dock animation-time 0.20000000000000001
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-10 ['<Ctrl><Super>0']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-1 ['<Ctrl><Super>1']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-2 ['<Ctrl><Super>2']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-3 ['<Ctrl><Super>3']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-4 ['<Ctrl><Super>4']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-5 ['<Ctrl><Super>5']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-6 ['<Ctrl><Super>6']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-7 ['<Ctrl><Super>7']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-8 ['<Ctrl><Super>8']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-9 ['<Ctrl><Super>9']
org.gnome.shell.extensions.dash-to-dock app-hotkey-10 ['<Super>0']
org.gnome.shell.extensions.dash-to-dock app-hotkey-1 ['<Super>1']
org.gnome.shell.extensions.dash-to-dock app-hotkey-2 ['<Super>2']
org.gnome.shell.extensions.dash-to-dock app-hotkey-3 ['<Super>3']
org.gnome.shell.extensions.dash-to-dock app-hotkey-4 ['<Super>4']
org.gnome.shell.extensions.dash-to-dock app-hotkey-5 ['<Super>5']
org.gnome.shell.extensions.dash-to-dock app-hotkey-6 ['<Super>6']
org.gnome.shell.extensions.dash-to-dock app-hotkey-7 ['<Super>7']
org.gnome.shell.extensions.dash-to-dock app-hotkey-8 ['<Super>8']
org.gnome.shell.extensions.dash-to-dock app-hotkey-9 ['<Super>9']
org.gnome.shell.extensions.dash-to-dock apply-custom-theme false
org.gnome.shell.extensions.dash-to-dock apply-glossy-effect true
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-10 ['<Shift><Super>0']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-1 ['<Shift><Super>1']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-2 ['<Shift><Super>2']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-3 ['<Shift><Super>3']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-4 ['<Shift><Super>4']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-5 ['<Shift><Super>5']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-6 ['<Shift><Super>6']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-7 ['<Shift><Super>7']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-8 ['<Shift><Super>8']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-9 ['<Shift><Super>9']
org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen false
org.gnome.shell.extensions.dash-to-dock autohide true
org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'
org.gnome.shell.extensions.dash-to-dock background-opacity 0.80000000000000004
org.gnome.shell.extensions.dash-to-dock bolt-support true
org.gnome.shell.extensions.dash-to-dock click-action 'focus-or-previews'
org.gnome.shell.extensions.dash-to-dock custom-background-color false
org.gnome.shell.extensions.dash-to-dock customize-alphas false
org.gnome.shell.extensions.dash-to-dock custom-theme-customize-running-dots false
org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-color '#ffffff'
org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-width 0
org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color '#ffffff'
org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 48
org.gnome.shell.extensions.dash-to-dock disable-overview-on-startup true
org.gnome.shell.extensions.dash-to-dock dock-fixed true
org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'
org.gnome.shell.extensions.dash-to-dock extend-height true
org.gnome.shell.extensions.dash-to-dock force-straight-corner false
org.gnome.shell.extensions.dash-to-dock height-fraction 0.90000000000000002
org.gnome.shell.extensions.dash-to-dock hide-delay 0.20000000000000001
org.gnome.shell.extensions.dash-to-dock hotkeys-overlay true
org.gnome.shell.extensions.dash-to-dock hotkeys-show-dock true
org.gnome.shell.extensions.dash-to-dock hot-keys true
org.gnome.shell.extensions.dash-to-dock icon-size-fixed true
org.gnome.shell.extensions.dash-to-dock intellihide-mode 'ALL_WINDOWS'
org.gnome.shell.extensions.dash-to-dock intellihide true
org.gnome.shell.extensions.dash-to-dock isolate-locations true
org.gnome.shell.extensions.dash-to-dock isolate-monitors false
org.gnome.shell.extensions.dash-to-dock isolate-workspaces false
org.gnome.shell.extensions.dash-to-dock max-alpha 0.80000000000000004
org.gnome.shell.extensions.dash-to-dock middle-click-action 'launch'
org.gnome.shell.extensions.dash-to-dock min-alpha 0.20000000000000001
org.gnome.shell.extensions.dash-to-dock minimize-shift true
org.gnome.shell.extensions.dash-to-dock multi-monitor false
org.gnome.shell.extensions.dash-to-dock preferred-monitor -2
org.gnome.shell.extensions.dash-to-dock preferred-monitor-by-connector 'primary'
org.gnome.shell.extensions.dash-to-dock pressure-threshold 100.0
org.gnome.shell.extensions.dash-to-dock preview-size-scale 0.0
org.gnome.shell.extensions.dash-to-dock require-pressure-to-show true
org.gnome.shell.extensions.dash-to-dock running-indicator-dominant-color false
org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DOTS'
org.gnome.shell.extensions.dash-to-dock scroll-action 'switch-workspace'
org.gnome.shell.extensions.dash-to-dock scroll-switch-workspace true
org.gnome.shell.extensions.dash-to-dock scroll-to-focused-application true
org.gnome.shell.extensions.dash-to-dock shift-click-action 'launch'
org.gnome.shell.extensions.dash-to-dock shift-middle-click-action 'minimize'
org.gnome.shell.extensions.dash-to-dock shortcut ['<Super>q']
org.gnome.shell.extensions.dash-to-dock shortcut-text '<Super>q'
org.gnome.shell.extensions.dash-to-dock shortcut-timeout 2.0
org.gnome.shell.extensions.dash-to-dock show-apps-at-top false
org.gnome.shell.extensions.dash-to-dock show-delay 0.25
org.gnome.shell.extensions.dash-to-dock show-favorites true
org.gnome.shell.extensions.dash-to-dock show-mounts-network true
org.gnome.shell.extensions.dash-to-dock show-mounts-only-mounted false
org.gnome.shell.extensions.dash-to-dock show-mounts true
org.gnome.shell.extensions.dash-to-dock show-running true
org.gnome.shell.extensions.dash-to-dock show-show-apps-button true
org.gnome.shell.extensions.dash-to-dock show-trash true
org.gnome.shell.extensions.dash-to-dock show-windows-preview true
org.gnome.shell.extensions.dash-to-dock transparency-mode 'DEFAULT'
org.gnome.shell.extensions.dash-to-dock unity-backlit-items false
org.gnome.shell.extensions.dash-to-dock workspace-agnostic-urgent-windows true
```

run

``` sh
cat /usr/share/glib-2.0/schemas/10_ubuntu-dock.gschema.override
```

show

```
[org.gnome.shell.extensions.dash-to-dock:ubuntu]
disable-overview-on-startup=true
show-mounts-only-mounted=false
show-mounts-network=true
dock-position='LEFT'
dock-fixed=true
intellihide-mode='ALL_WINDOWS'
intellihide=true
icon-size-fixed=true
custom-theme-shrink=true
running-indicator-style='DOTS'
extend-height=true
scroll-action='switch-workspace'
click-action='focus-or-previews'
shift-click-action='launch'
middle-click-action='launch'
shift-middle-click-action='minimize'
```

run

``` sh
grep '<schemalist' /usr/share/glib-2.0/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml -A 46
```

show

```
<schemalist gettext-domain="gnome-shell-extensions">
  <enum id='org.gnome.shell.extensions.dash-to-dock.clickAction'>
    <value value='0' nick='skip'/>
    <value value='1' nick='minimize'/>
    <value value='2' nick='launch'/>
    <value value='3' nick='cycle-windows'/>
    <value value='4' nick='minimize-or-overview'/>
    <value value='5' nick='previews'/>
    <value value='6' nick='minimize-or-previews'/>
    <value value='7' nick='focus-or-previews'/>
    <value value='8' nick='focus-minimize-or-previews'/>
    <value value='9' nick='quit'/>
  </enum>
  <enum id='org.gnome.shell.extensions.dash-to-dock.scrollAction'>
    <value value='0' nick='do-nothing'/>
    <value value='1' nick='cycle-windows'/>
    <value value='2' nick='switch-workspace'/>
  </enum>
  <!-- this is mean to Match StSide. LEFT and RIGHT actual position in reversed in
       rtl languages -->
  <enum id='org.gnome.shell.extensions.dash-to-dock.position'>
    <value value='0' nick='TOP'/>
    <value value='1' nick='RIGHT'/>
    <value value='2' nick='BOTTOM'/>
    <value value='3' nick='LEFT'/>
  </enum>
  <enum id='org.gnome.shell.extensions.dash-to-dock.intellihide-mode'>
    <value value='0' nick='ALL_WINDOWS'/>
    <value value='1' nick='FOCUS_APPLICATION_WINDOWS'/>
    <value value='2' nick='MAXIMIZED_WINDOWS'/>
    <value value='3' nick='ALWAYS_ON_TOP'/>
  </enum>
  <enum id='org.gnome.shell.extensions.dash-to-dock.transparency-mode'>
    <value value='0' nick='DEFAULT'/>
    <value value='1' nick='FIXED'/>
    <value value='3' nick='DYNAMIC'/>
  </enum>
    <enum id='org.gnome.shell.extensions.dash-to-dock.running-indicator-style'>
    <value value='0' nick='DEFAULT'/>
    <value value='1' nick='DOTS'/>
    <value value='2' nick='SQUARES'/>
    <value value='3' nick='DASHES'/>
    <value value='4' nick='SEGMENTED'/>
    <value value='5' nick='SOLID'/>
    <value value='6' nick='CILIORA'/>
    <value value='7' nick='METRO'/>
  </enum>
```


run

``` sh
dconf dump /org/gnome/shell/extensions/dash-to-dock/
```

show

```
[/]
click-action='minimize'
dash-max-icon-size=36
dock-fixed=true
dock-position='BOTTOM'
extend-height=false
isolate-locations=true
middle-click-action='cycle-windows'
scroll-action='switch-workspace'
shortcut=['']
shortcut-text=''
show-mounts=false
show-trash=false
transparency-mode='DYNAMIC'
```

run

``` sh
dconf dump / | grep 'org/gnome/shell/extensions/dash-to-dock' -A 14
```

show

```
[org/gnome/shell/extensions/dash-to-dock]
click-action='minimize'
dash-max-icon-size=36
dock-fixed=true
dock-position='BOTTOM'
extend-height=false
isolate-locations=true
middle-click-action='cycle-windows'
scroll-action='switch-workspace'
shortcut=['']
shortcut-text=''
show-mounts=false
show-trash=false
transparency-mode='DYNAMIC'

```


run

``` sh
cat /usr/share/glib-2.0/schemas/10_gnome-shell.gschema.override
```

show

```
[org.gnome.shell]
favorite-apps=[ 'firefox-esr.desktop', 'org.gnome.Evolution.desktop', 'rhythmbox.desktop', 'libreoffice-writer.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Software.desktop', 'yelp.desktop' ]
```


## gschema

* /usr/share/glib-2.0/schemas/10_gnome-shell.gschema.override
* /usr/share/glib-2.0/schemas/10_ubuntu-dock.gschema.override
* /usr/share/glib-2.0/schemas/20_ubuntu-dock.gschema.override
* /usr/share/glib-2.0/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml
* ~/.config/dconf/user


## Package

run

``` sh
dpkg -L gnome-shell-extension-ubuntu-dock | grep 'schemas/' | sort
```

show

```
/usr/share/glib-2.0/schemas/10_ubuntu-dock.gschema.override
/usr/share/glib-2.0/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml
```

run

``` sh
dpkg -L gnome-shell-extension-ubuntu-dock | sort
```

show

```
/.
/usr
/usr/share
/usr/share/doc
/usr/share/doc/gnome-shell-extension-ubuntu-dock
/usr/share/doc/gnome-shell-extension-ubuntu-dock/changelog.gz
/usr/share/doc/gnome-shell-extension-ubuntu-dock/copyright
/usr/share/glib-2.0
/usr/share/glib-2.0/schemas
/usr/share/glib-2.0/schemas/10_ubuntu-dock.gschema.override
/usr/share/glib-2.0/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml
/usr/share/gnome-shell
/usr/share/gnome-shell/extensions
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/appIconIndicators.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/appIcons.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/dash.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/dbusmenuUtils.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/desktopIconsIntegration.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/docking.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/extension.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/fileManager1API.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/intellihide.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/launcherAPI.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/locations.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/media
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/media/glossy.svg
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/media/highlight_stacked_bg_h.svg
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/media/highlight_stacked_bg.svg
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/media/logo.svg
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/metadata.json
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/README.md
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/Settings.ui
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/stylesheet.css
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/theming.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/ubuntu.css
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/utils.js
/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com/windowPreview.js
```
