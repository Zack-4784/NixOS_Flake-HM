{pkgs, ...}: {
  networking.networkmanager.dispatcherScripts = [
    {
      source = pkgs.writeShellScript "wallpaper-dispatcher" ''
        INTERFACE="$1"
        ACTION="$2"
        SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)
        USER="zack"
        USER_ID=$(id -u "$USER")
        DBUS_SESSION="unix:path=/run/user/$USER_ID/bus"

        set_wallpaper() {
          DBUS_SESSION_BUS_ADDRESS="$DBUS_SESSION" \
          sudo -u "$USER" \
          ${pkgs.kdePackages.qttools}/bin/qdbus6 \
            org.kde.plasmashell /PlasmaShell \
            org.kde.PlasmaShell.evaluateScript "
          var allDesktops = desktops();
          for (i=0; i < allDesktops.length; i++) {
            d = allDesktops[i];
            d.wallpaperPlugin = 'org.kde.image';
            d.currentConfigGroup = ['Wallpaper', 'org.kde.image', 'General'];
            d.writeConfig('Image', 'file://$1');
          }"
        }

        if [ "$ACTION" = "up" ]; then
          if [ "$SSID" = "Woodlands" ]; then
            set_wallpaper "/home/zack/Pictures/wallpapers/xenia.png"
          else
            set_wallpaper "/home/zack/Pictures/wallpapers/swirls.jpg"
          fi
        fi
      '';
      type = "basic";
    }
  ];
}
