{pkgs, ...}: let
  cycleWallpaper = pkgs.writeShellScriptBin "cycle-wallpaper" ''
    XENIA="/home/zack/Pictures/wallpapers/xenia.png"
    SWIRLS="/home/zack/Pictures/wallpapers/swirls.jpg"
    STATE_FILE="/tmp/current-wallpaper"

    if [ ! -f "$STATE_FILE" ]; then
      echo "swirls" > "$STATE_FILE"
    fi

    CURRENT=$(cat "$STATE_FILE")

    if [ "$CURRENT" = "xenia" ]; then
      plasma-apply-wallpaperimage "$SWIRLS"
      echo "swirls" > "$STATE_FILE"
    else
      plasma-apply-wallpaperimage "$XENIA"
      echo "xenia" > "$STATE_FILE"
    fi
  '';
in {
  home.packages = [ cycleWallpaper ];
}
