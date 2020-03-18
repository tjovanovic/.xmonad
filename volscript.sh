#!/bin/bash

LEVEL=`pamixer --get-volume`

MUTED=$(pamixer --get-mute | sed -e 's/true/M/' -e 's/false//')

if [ "$MUTED" == "M" ]; then
    echo "Vol:<fc=#FF8500>"$LEVEL"</fc>%"$MUTED
else
    echo "Vol:<fc=#8CC4FF>"$LEVEL"</fc>%"
fi


