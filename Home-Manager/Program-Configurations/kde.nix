{pkgs, ...}: let
  cycleWallpaper = pkgs.writeShellScriptBin "cycle-wallpaper" ''
    WALLPAPER_DIR="/home/zack/Pictures/wallpapers"
    STATE_FILE="/tmp/current-wallpaper"
    WALLPAPERS=("$WALLPAPER_DIR/xenia.png" "$WALLPAPER_DIR/swirls.jpg")

    if [ ! -f "$STATE_FILE" ]; then
      echo "0" > "$STATE_FILE"
    fi

    CURRENT=$(cat "$STATE_FILE")
    NEXT=$(( (CURRENT + 1) % ${#WALLPAPERS[@]} ))
    echo "$NEXT" > "$STATE_FILE"

    plasma-apply-wallpaperimage "''${WALLPAPERS[''${NEXT}]}"
  '';
in {
  home.packages = [ cycleWallpaper ];
}
