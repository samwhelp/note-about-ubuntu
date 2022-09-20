
# nautilus




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
gnome-shell --version
```

show

```
GNOME Shell 42.4
```

run

``` sh
nautilus --version
```

show

```
GNOME nautilus 42.2
```



run

``` sh
gsettings list-recursively | grep nautilus | sort
```

show

```
org.gnome.nautilus.compression default-compression-format 'zip'
org.gnome.nautilus.icon-view captions ['none', 'none', 'none']
org.gnome.nautilus.icon-view default-zoom-level 'larger'
org.gnome.nautilus.icon-view text-ellipsis-limit ['3']
org.gnome.nautilus.list-view default-column-order ['name', 'size', 'type', 'owner', 'group', 'permissions', 'mime_type', 'where', 'date_modified', 'date_modified_with_time', 'date_accessed', 'date_created', 'recency', 'starred']
org.gnome.nautilus.list-view default-visible-columns ['name', 'size', 'date_modified', 'starred']
org.gnome.nautilus.list-view default-zoom-level 'standard'
org.gnome.nautilus.list-view use-tree-view false
org.gnome.nautilus.preferences always-use-location-entry false
org.gnome.nautilus.preferences click-policy 'double'
org.gnome.nautilus.preferences default-folder-viewer 'icon-view'
org.gnome.nautilus.preferences default-sort-in-reverse-order false
org.gnome.nautilus.preferences default-sort-order 'name'
org.gnome.nautilus.preferences fts-enabled true
org.gnome.nautilus.preferences install-mime-activation true
org.gnome.nautilus.preferences mouse-back-button 8
org.gnome.nautilus.preferences mouse-forward-button 9
org.gnome.nautilus.preferences mouse-use-extra-buttons true
org.gnome.nautilus.preferences open-folder-on-dnd-hover true
org.gnome.nautilus.preferences recursive-search 'local-only'
org.gnome.nautilus.preferences search-filter-time-type 'last_modified'
org.gnome.nautilus.preferences search-view 'list-view'
org.gnome.nautilus.preferences show-create-link false
org.gnome.nautilus.preferences show-delete-permanently false
org.gnome.nautilus.preferences show-directory-item-counts 'local-only'
org.gnome.nautilus.preferences show-hidden-files false
org.gnome.nautilus.preferences show-image-thumbnails 'local-only'
org.gnome.nautilus.preferences tabs-open-position 'after-current-tab'
org.gnome.nautilus.preferences thumbnail-limit uint64 50
org.gnome.nautilus.preferences use-experimental-views false
org.gnome.nautilus.window-state initial-size (853, 550)
org.gnome.nautilus.window-state maximized false
org.gnome.nautilus.window-state sidebar-width 188
org.gnome.nautilus.window-state start-with-location-bar true
org.gnome.nautilus.window-state start-with-sidebar true
```





run

``` sh
grep org.gnome.nautilus /usr/share/glib-2.0/schemas/*.xml
```


run

``` sh
dpkg -L nautilus-data | grep '/schemas/'
```

show

```
/usr/share/glib-2.0/schemas/org.gnome.nautilus.gschema.xml
```

## gschema

* /usr/share/glib-2.0/schemas/50_nautilus.gschema.override
* ~/.config/dconf/user


``` sh
dconf dump / | grep 'org/gnome/nautilus' -A 32
```

## Package

run

``` sh
apt-cache show nautilus | grep gtk
```

or run

```
apt-cache show nautilus | grep '^Depends:'
```

show

```
Depends: bubblewrap, desktop-file-utils (>= 0.7), gsettings-desktop-schemas (>= 3.8.0), gvfs (>= 1.3.2), libglib2.0-data, libnautilus-extension1a (= 1:42.2-0ubuntu1), nautilus-data (= 1:42.2-0ubuntu1), shared-mime-info (>= 0.50), tracker (>= 3), tracker-miner-fs (>= 3), tracker-extract (>= 3), libatk1.0-0 (>= 1.32.0), libc6 (>= 2.34), libcairo-gobject2 (>= 1.10.0), libcairo2 (>= 1.14.0), libdbusmenu-glib4 (>= 0.4.2), libgdk-pixbuf-2.0-0 (>= 2.25.2), libgexiv2-2 (>= 0.14.0), libglib2.0-0 (>= 2.70.0), libgnome-autoar-0-0 (>= 0.4.0), libgnome-desktop-3-19 (>= 3.17.92), libgstreamer-plugins-base1.0-0 (>= 1.0.0), libgstreamer1.0-0 (>= 1.0.0), libgtk-3-0 (>= 3.23.1), libhandy-1-0 (>= 1.5.0), libpango-1.0-0 (>= 1.44.6), libselinux1 (>= 3.1~), libtracker-sparql-3.0-0 (>= 3.1.1), libunity9 (>= 3.4.6)
```

run

``` sh
dpkg -l '*nautilus*'
```

show

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                              Version         Architecture Description
+++-=================================-===============-============-========================================================
ii  libnautilus-extension1a:amd64     1:42.2-0ubuntu1 amd64        libraries for nautilus components - runtime version
ii  nautilus                          1:42.2-0ubuntu1 amd64        file manager and graphical shell for GNOME
un  nautilus-actions                  <none>          <none>       (no description available)
ii  nautilus-data                     1:42.2-0ubuntu1 all          data files for nautilus
ii  nautilus-extension-brasero        3.12.3-1        amd64        CD/DVD burning integration for Nautilus
ii  nautilus-extension-gnome-terminal 3.44.0-1ubuntu1 amd64        GNOME terminal emulator application - Nautilus extension
ii  nautilus-sendto                   3.8.6-4         amd64        easily send files via email from within Nautilus
ii  nautilus-share                    0.7.3-2ubuntu6  amd64        Nautilus extension to share folder using Samba
```


run

``` sh
apt-cache search nautilus | sort
```

show

```
cairo-dock-shortcuts-plug-in - Shortcuts plug-in for Cairo-dock
caja-seahorse - Caja extension to encrypt/decrypt OpenPGP files using GnuPG
clamtk-gnome - GNOME (Nautilus) MenuProvider extension for ClamTk
clamtk - graphical front-end for ClamAV
easytag-nautilus - Nautilus extension for easytag
eiciel - graphical editor for POSIX ACLs and extended user attributes
folder-color - folder color for nautilus
fvwm-crystal - Pretty Desktop Environment based on FVWM
gir1.2-nautilus-3.0 - libraries for nautilus components - gir bindings
gnome-control-center - utilities to configure the GNOME desktop
gnome-hwp-support - HWP document integration for GNOME desktop
gnome-icon-theme - GNOME Desktop icon theme
gnome-shell-extension-gsconnect - KDE Connect implementation for GNOME Shell
gnome-sushi - sushi is a quick previewer for nautilus
heif-thumbnailer - ISO/IEC 23008-12:2017 HEIF file format decoder - thumbnailer
intltool - Utility scripts for internationalizing XML
libfm4 - file management support (core library)
libnautilus-extension1a - libraries for nautilus components - runtime version
libnautilus-extension-dev - libraries for nautilus components - development version
makexvpics - updates .xvpics thumbnails from the command line
mat2 - Metadata anonymisation toolkit v2
nautilus-admin - Extension for Nautilus to do administrative operations
nautilus-data - data files for nautilus
nautilus-dropbox - Dropbox integration for Nautilus
nautilus-extension-brasero - CD/DVD burning integration for Nautilus
nautilus-extension-burner - CD/DVD burning integration for Nautilus
nautilus-extension-gnome-console - GNOME Console - Nautilus extension
nautilus-extension-gnome-terminal - GNOME terminal emulator application - Nautilus extension
nautilus - file manager and graphical shell for GNOME
nautilus-filename-repairer - Nautilus extension for filename encoding repair
nautilus-font-manager - Nautilus extension for Font Manager
nautilus-gtkhash - nautilus extension for computing checksums and more using gtkhash
nautilus-hide - Extension for Nautilus to hide files without renaming them
nautilus-ideviceinfo - utility showing information of idevices on nautilus
nautilus-image-converter - nautilus extension to mass resize or rotate images
nautilus-kdeconnect - KDE Connect integration for Nautilus
nautilus-nextcloud - Nextcloud integration for Nautilus
nautilus-owncloud - ownCloud integration for Nautilus
nautilus-script-audio-convert - A nautilus audio converter script
nautilus-script-collection-svn - Nautilus subversion management scripts
nautilus-script-debug - Simple nautilus debugging script
nautilus-script-manager - A simple management tool for nautilus scripts
nautilus-scripts-manager - simple tool for nautilus scripts management
nautilus-sendto - easily send files via email from within Nautilus
nautilus-share - Nautilus extension to share folder using Samba
nautilus-wipe - Secure deletion extension for Nautilus
ooo-thumbnailer - thumbnailer for OpenOffice.org documents
p7zip - 7zr file archiver with high compression ratio
p7zip-full - 7z and 7za file archivers with high compression ratio
pacpl - multi-purpose audio converter/ripper/tagger script
python3-nautilus - Python binding for Nautilus components (Python 3 version)
rabbitvcs-core - Easy version control
rabbitvcs-nautilus - Nautilus extension for RabbitVCS
seahorse-nautilus - Nautilus extension for Seahorse integration
subliminal-nautilus - Nautilus extension to search and download subtitles
syncthing-gtk - GTK3-based GUI and notification area icon for syncthing
tortoisehg-nautilus - Graphical tool for working with Mercurial (Nautilus extension)
totem - Simple media player for the GNOME desktop based on GStreamer
udiskie - automounter for removable media for Python
unity-control-center - utilities to configure the GNOME desktop
wbar - light and fast launch bar
```
