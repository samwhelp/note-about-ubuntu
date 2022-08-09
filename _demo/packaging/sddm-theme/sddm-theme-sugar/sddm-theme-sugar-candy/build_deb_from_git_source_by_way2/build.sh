#!/usr/bin/env bash


PKG_ROOT_NAME="sddm-theme-sugar-candy"




rm -rf "var/deb"

#mkdir -p "var/deb"

mkdir -p "var/deb/$PKG_ROOT_NAME/usr/share/sddm/themes"




#cp -rfv "var/src/$PKG_ROOT_NAME" "var/deb/$PKG_ROOT_NAME"

cp -rfv "var/src/$PKG_ROOT_NAME" "var/deb/$PKG_ROOT_NAME/usr/share/sddm/themes/$PKG_ROOT_NAME"

cp -rfv "asset/build/debian" "var/deb/$PKG_ROOT_NAME/debian"

rm -rfv "var/deb/$PKG_ROOT_NAME/usr/share/sddm/themes/$PKG_ROOT_NAME/.git"


cd "var/deb/$PKG_ROOT_NAME"

debuild -i -us -uc

cd "$OLDPWD"
