# Autostart
pgrep -x sxhkd > /dev/null || sxhkd &
. ~/.zshrc &
sleep 1
$HOME/.config/polybar/Rich/launch.sh &
sleep 1
picom &
xscreensaver --no-splash &
/opt/piavpn/bin/pia-client %u --quiet &
flameshot &
sleep 1
blueberry-tray &
#dunst &
wal -R -o '$HOME/.config/dunst/launchdunst.sh'
~/.fehbg
