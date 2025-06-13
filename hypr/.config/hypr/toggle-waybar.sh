# ~/.config/hypr/toggle-waybar.sh
#!/bin/bash

WAYBAR_PID=$(pidof waybar)

if [ -n "$WAYBAR_PID" ]; then
    kill "$WAYBAR_PID"
else
    waybar &
fi
