#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit
CONFIG_PATH=/home/liraop/.config/polybar/example

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
          MONITOR=$m polybar --config=$CONFIG_PATH/config --reload example & 
  done
else
        polybar --config=$CONFIG_PATH/config --reload example & 
fi
