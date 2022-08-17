#!/usr/bin/env bash


sha256sum -c SHA256SUMS

##
## ubuntu-mate-22.04.1-desktop-amd64.iso: OK
##


##
## sha256sum -c SHA256SUMS 2>&1 | grep OK
## shasum -a 256 -c SHA256SUMS 2>&1 | grep OK
##


##
## https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64#
## echo "c396e956a9f52c418397867d1ea5c0cf1a99a49dcf648b086d2fb762330cc88d *ubuntu-22.04.1-desktop-amd64.iso" | shasum -a 256 --check
##
