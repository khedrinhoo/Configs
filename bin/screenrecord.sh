#!/usr/bin/bash

if pgrep -x wf-recorder >/dev/null; then
    pkill -INT wf-recorder
else
    wf-recorder \
        -g 2560x1440+0,0 \
        -r 60 \
        --codec libx264rgb \
        -b 0 \
        -a \
        -f "$HOME/Personal/screenrecords/$(date +%Y-%m-%d_%H-%M-%S).mp4" &
    disown
fi
