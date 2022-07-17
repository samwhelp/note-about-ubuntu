
# xed


## Explore


run

``` sh
pacman -Ql xed -q | grep schema 
```

show

```
/usr/share/glib-2.0/schemas/
/usr/share/glib-2.0/schemas/org.x.editor.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.filebrowser.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.spell.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.time.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.wordcompletion.gschema.xml
```


run

``` sh
gsettings list-recursively | grep org.x.editor | sort
```

show

```
org.x.editor.plugins active-plugins ['filebrowser', 'joinlines', 'spell', 'docinfo', 'open-uri-context-menu', 'sort', 'time', 'modelines', 'bracketcompletion', 'textsize']
org.x.editor.plugins.filebrowser filter-mode 'hidden_and_binary'
org.x.editor.plugins.filebrowser filter-pattern ''
org.x.editor.plugins.filebrowser.on-load enable-remote false
org.x.editor.plugins.filebrowser.on-load root 'file:///'
org.x.editor.plugins.filebrowser.on-load tree-view true
org.x.editor.plugins.filebrowser.on-load virtual-root 'file:///home/sam'
org.x.editor.plugins.filebrowser open-at-first-doc true
org.x.editor.plugins.filebrowser terminal-command 'x-terminal-emulator'
org.x.editor.plugins.spell autocheck-type 'document'
org.x.editor.plugins.time custom-format '%d/%m/%Y %H:%M:%S'
org.x.editor.plugins.time prompt-type 'prompt-selected-format'
org.x.editor.plugins.time selected-format '%c'
org.x.editor.plugins.wordcompletion interactive-completion true
org.x.editor.plugins.wordcompletion minimum-word-size uint32 2
org.x.editor.preferences.editor auto-indent false
org.x.editor.preferences.editor auto-save false
org.x.editor.preferences.editor auto-save-interval uint32 10
org.x.editor.preferences.editor bracket-matching false
org.x.editor.preferences.editor create-backup-copy false
org.x.editor.preferences.editor display-line-numbers false
org.x.editor.preferences.editor display-right-margin false
org.x.editor.preferences.editor draw-whitespace false
org.x.editor.preferences.editor draw-whitespace-inside false
org.x.editor.preferences.editor draw-whitespace-leading false
org.x.editor.preferences.editor draw-whitespace-newline false
org.x.editor.preferences.editor draw-whitespace-trailing false
org.x.editor.preferences.editor editor-font 'Monospace 12'
org.x.editor.preferences.editor ensure-trailing-newline true
org.x.editor.preferences.editor highlight-current-line false
org.x.editor.preferences.editor insert-spaces true
org.x.editor.preferences.editor max-undo-actions 2000
org.x.editor.preferences.editor prefer-dark-theme false
org.x.editor.preferences.editor restore-cursor-position true
org.x.editor.preferences.editor right-margin-position uint32 120
org.x.editor.preferences.editor scheme 'tango'
org.x.editor.preferences.editor search-highlighting true
org.x.editor.preferences.editor smart-home-end 'after'
org.x.editor.preferences.editor syntax-highlighting true
org.x.editor.preferences.editor tabs-size uint32 4
org.x.editor.preferences.editor use-default-font true
org.x.editor.preferences.editor wrap-mode 'word'
org.x.editor.preferences.editor writable-vfs-schemes ['dav', 'davs', 'ftp', 'sftp', 'smb', 'ssh']
org.x.editor.preferences.encodings auto-detected ['UTF-8', 'CURRENT', 'ISO-8859-15', 'UTF-16']
org.x.editor.preferences.encodings shown-in-menu ['ISO-8859-15']
org.x.editor.preferences.print print-font-body-pango 'Monospace 9'
org.x.editor.preferences.print print-font-header-pango 'Sans 11'
org.x.editor.preferences.print print-font-numbers-pango 'Sans 8'
org.x.editor.preferences.print print-header true
org.x.editor.preferences.print print-line-numbers uint32 0
org.x.editor.preferences.print print-syntax-highlighting true
org.x.editor.preferences.print print-wrap-mode 'word'
org.x.editor.preferences.ui bottom-panel-visible false
org.x.editor.preferences.ui enable-tab-scrolling true
org.x.editor.preferences.ui max-recents uint32 5
org.x.editor.preferences.ui menubar-visible true
org.x.editor.preferences.ui minimap-visible false
org.x.editor.preferences.ui side-panel-visible false
org.x.editor.preferences.ui statusbar-visible true
org.x.editor.preferences.ui toolbar-visible true
org.x.editor.state.file-filter filter-id 0
org.x.editor.state.history-entry history-replace-with @as []
org.x.editor.state.history-entry history-search-for @as []
org.x.editor.state.window bottom-panel-active-page 0
org.x.editor.state.window bottom-panel-size 140
org.x.editor.state.window side-panel-active-page 827629879
org.x.editor.state.window side-panel-size 200
org.x.editor.state.window size (650, 500)
org.x.editor.state.window state 128
