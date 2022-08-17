#!/usr/bin/env bash

echo
echo "##"
echo "## Key Get:"
echo "##"
echo
gpg --keyid-format long --keyserver hkp://keyserver.ubuntu.com --recv-keys 0x46181433FBB75451 0xD94AA3F0EFE21092


#ls ~/.gnupg/

echo
echo "##"
echo "## Key List:"
echo "##"
echo
gpg --keyid-format long --list-keys --with-fingerprint 0x46181433FBB75451 0xD94AA3F0EFE21092


##
## * https://ubuntu.com/tutorials/how-to-verify-ubuntu#4-retrieve-the-correct-signature-key
##
