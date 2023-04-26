#!/usr/bin/env bash


THE_URL='https://www.youtube.com/watch?v=AGW40bNJ-xk'

yt-dlp -F "${THE_URL}" > log.txt

yt-dlp -c -i "${THE_URL}"



##
## https://github.com/yt-dlp/yt-dlp#format-selection
##

#yt-dlp -c -f 247+bestaudio -i "${THE_URL}"

#yt-dlp -c -f 248+bestaudio -i "${THE_URL}"
