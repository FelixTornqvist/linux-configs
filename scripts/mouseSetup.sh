#!/bin/bash

#### xinput version: ####

# xinput --list-props 16 to find all props for my touchpad
## Enable tapping
#xinput --set-prop 16 300 1
## Enable natural scrolling
#xinput --set-prop 16 278 1
## Higher mouse acceleration
#xinput --set-prop 16 287 1.0


#### synclient version: ####

# synclient -l to find all available props

synclient HorizTwoFingerScroll=1
# Use this to enable scrolling as on a iPod clickwheel
#synclient CircularScrolling=1

# Natural scrolling
synclient VertScrollDelta=-100
synclient HorizScrollDelta=-100

