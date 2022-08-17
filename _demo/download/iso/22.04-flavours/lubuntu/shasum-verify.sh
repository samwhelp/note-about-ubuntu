#!/usr/bin/env bash

gpg --keyid-format long --verify SHA256SUMS.gpg SHA256SUMS

##
## * https://ubuntu.com/tutorials/how-to-verify-ubuntu#4-retrieve-the-correct-signature-key
## * https://ubuntu.com/tutorials/how-to-verify-ubuntu#5-verify-the-sha256-checksum
##
