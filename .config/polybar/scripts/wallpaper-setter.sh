# -n tells `wal` to skip setting the wallpaper.
wal -i img.jpg -n

# Using feh to tile the wallpaper now.
# We grab the wallpaper location from wal's cache so 
# that this works even when a directory is passed.
feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"  


# You can create a function for this in your shellrc (.bashrc, .zshrc).
wal-tile() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}

# Usage:
wal-tile "~/Pictures/wall.jpg"
wal-tile "~/Pictures/Wallpaper/3840x1080"
