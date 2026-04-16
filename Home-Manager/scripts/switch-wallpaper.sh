#!/usr/bin/env bash
# Usage: switch-wallpaper.sh <path-to-wallpaper>
WALLPAPER="$1"
qdbus6 org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
var allDesktops = desktops();
for (i=0; i < allDesktops.length; i++) {
    d = allDesktops[i];
    d.wallpaperPlugin = 'org.kde.image';
    d.currentConfigGroup = ['Wallpaper', 'org.kde.image', 'General'];
    d.writeConfig('Image', 'file://$WALLPAPER');
}
"
