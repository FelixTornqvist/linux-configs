#!/bin/bash

SCROT_DIR=~/Pictures/screenshots/
TMP_SCROT=/tmp/screenshot.png

cd $SCROT_DIR

case $1 in
	tc) #Take screenshot and Copy
##		scrot $TMP_SCROT && xclip -target image/png -selection clipboard $TMP_SCROT
		gnome-screenshot -f $TMP_SCROT && xclip -target image/png -selection clipboard $TMP_SCROT 
		;;

	sc) #Select screenshot area and Copy
##		scrot -s $TMP_SCROT && xclip -target image/png -selection clipboard $TMP_SCROT 
		gnome-screenshot -a -f $TMP_SCROT && xclip -target image/png -selection clipboard $TMP_SCROT 
		;;

	t) #Take screenshot and save in $(SCROT_DIR)
##		scrot 
		gnome-screenshot -f "$SCROT_DIR$(date +"%Y-%m-%d %T").png"
		;;

	s) #Select screenshot area and save in $(SCROT_DIR)
##		scrot -s
		gnome-screenshot -a -f "$SCROT_DIR$(date +"%Y-%m-%d %T").png"
		;;

esac
