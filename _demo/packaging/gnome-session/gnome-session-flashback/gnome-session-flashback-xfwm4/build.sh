#!/usr/bin/env bash


PKG_ROOT="gnome-session-flashback-xfwm4"




rm -rf "var/deb"

mkdir -p "var/deb"


cp -av "var/src/note-about-gnome-flashback/_demo/project/gnome-session/gnome-session-flashback/$PKG_ROOT/pkg-root" "var/deb/$PKG_ROOT"

cp -av "asset/build/debian" "var/deb/$PKG_ROOT/debian"




cd "var/deb/$PKG_ROOT"

debuild -i -us -uc

cd "$OLDPWD"
