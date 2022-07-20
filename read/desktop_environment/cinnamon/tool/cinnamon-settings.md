---
title: cinnamon-settings
nav_order: 3080
has_children: false
parent: cinnamon
grand_parent: 桌面環境
---


# cinnamon-settings

## 相關的設定工具

執行

``` sh
ls /usr/share/applications/cinnamon-settings*
```

顯示

```
/usr/share/applications/cinnamon-settings-applets.desktop
/usr/share/applications/cinnamon-settings-backgrounds.desktop
/usr/share/applications/cinnamon-settings-calendar.desktop
/usr/share/applications/cinnamon-settings-default.desktop
/usr/share/applications/cinnamon-settings-desklets.desktop
/usr/share/applications/cinnamon-settings.desktop
/usr/share/applications/cinnamon-settings-desktop.desktop
/usr/share/applications/cinnamon-settings-effects.desktop
/usr/share/applications/cinnamon-settings-extensions.desktop
/usr/share/applications/cinnamon-settings-fonts.desktop
/usr/share/applications/cinnamon-settings-general.desktop
/usr/share/applications/cinnamon-settings-hotcorner.desktop
/usr/share/applications/cinnamon-settings-info.desktop
/usr/share/applications/cinnamon-settings-keyboard.desktop
/usr/share/applications/cinnamon-settings-mouse.desktop
/usr/share/applications/cinnamon-settings-notifications.desktop
/usr/share/applications/cinnamon-settings-online-accounts.desktop
/usr/share/applications/cinnamon-settings-panel.desktop
/usr/share/applications/cinnamon-settings-power.desktop
/usr/share/applications/cinnamon-settings-privacy.desktop
/usr/share/applications/cinnamon-settings-screensaver.desktop
/usr/share/applications/cinnamon-settings-sound.desktop
/usr/share/applications/cinnamon-settings-startup.desktop
/usr/share/applications/cinnamon-settings-themes.desktop
/usr/share/applications/cinnamon-settings-tiling.desktop
/usr/share/applications/cinnamon-settings-universal-access.desktop
/usr/share/applications/cinnamon-settings-user.desktop
/usr/share/applications/cinnamon-settings-users.desktop
/usr/share/applications/cinnamon-settings-windows.desktop
/usr/share/applications/cinnamon-settings-workspaces.desktop
```


執行

``` sh
grep -h '^Exec=' $(ls /usr/share/applications/cinnamon-settings*) | awk -F '=' '{print $2}' | sort -u
```

顯示

```
cinnamon-settings
cinnamon-settings applets
cinnamon-settings backgrounds
cinnamon-settings calendar
cinnamon-settings default
cinnamon-settings desklets
cinnamon-settings desktop
cinnamon-settings effects
cinnamon-settings extensions
cinnamon-settings fonts
cinnamon-settings general
cinnamon-settings hotcorner
cinnamon-settings info
cinnamon-settings keyboard
cinnamon-settings mouse
cinnamon-settings notifications
cinnamon-settings online-accounts
cinnamon-settings panel
cinnamon-settings power
cinnamon-settings privacy
cinnamon-settings screensaver
cinnamon-settings sound
cinnamon-settings startup
cinnamon-settings themes
cinnamon-settings tiling
cinnamon-settings universal-access
cinnamon-settings user
cinnamon-settings-users
cinnamon-settings windows
cinnamon-settings workspaces
```

$ man 1 [cinnamon-settings](https://manpages.ubuntu.com/manpages/jammy/en/man1/cinnamon-settings.1.html)
