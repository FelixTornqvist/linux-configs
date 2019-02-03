#!/bin/bash

MSG=" "
for SINK in `pacmd list-sinks | grep 'index:' | cut -b12-`
do
	VOLUME=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( ${SINK} + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

	NEWVOL=$((${VOLUME} + ${1}))
	if [ $NEWVOL -gt 100 ]
	then
		NEWVOL=100
	elif [ $NEWVOL -lt 0 ]
	then
		NEWVOL=0
	fi
	MSG+="${SINK}:${NEWVOL}% "
	pactl set-sink-volume $SINK ${NEWVOL}%
done
notify-send "Volume" "$MSG"
