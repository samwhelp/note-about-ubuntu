#!/usr/bin/env bash

gsettings list-recursively | grep org.gnome.settings-daemon.plugins.media-keys | sort
