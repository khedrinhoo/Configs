#!/usr/bin/bash

if pgrep -x ffmpeg >/dev/null; then
    pkill -INT ffmpeg
else
    ffmpeg \
        -video_size 2560x1440 \
        -framerate 60 \
        -f x11grab -i :0.0 \
        -f pulse -i default \
        -c:v libx264 -crf 0 -preset ultrafast \
        "$HOME/Videos/screenrecords/$(date +%Y-%m-%d_%H-%M-%S).mp4" &
    disown
fi

