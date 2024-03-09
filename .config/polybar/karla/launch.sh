#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/karla"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
#polybar -q karla-bar -c "$DIR"/config.ini &
#polybar -q karla-bar2 -c "$DIR"/config.ini &
#polybar -q karla-bar3 -c "$DIR"/config.ini &
#polybar -q karla-bar4 -c "$DIR"/config.ini &


#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 -c "$DIR"/config.ini 2>&1 | tee -a /tmp/polybar1.log & disown &
polybar bar2 -c "$DIR"/config.ini 2>&1 | tee -a /tmp/polybar1.log & disown &
echo "Bars launched..."
