#!/bin/bash
STATUS=$(amixer get Master)
VOLUME=$(echo "$STATUS" | grep -o "[0-9]*%" | head -1)
MUTED=$(echo "$STATUS" | grep -E '\[off\]' | head -1)

if [ -n "$MUTED" ]; then
    echo "Muted"
else
    echo "$VOLUME"
fi
