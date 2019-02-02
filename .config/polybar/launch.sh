#!/usr/bin/env bash

sleep 0.2
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar example &
sleep 2
nm-applet

echo "Bars launched..."
