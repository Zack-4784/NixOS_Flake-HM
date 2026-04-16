{pkgs, ...}: let
  setWallpaper = wallpaper: pkgs.writeShellScript "set-wallpaper" ''
    sleep 3
    qdbus6 org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
    var allDesktops = desktops();
    for (i=0; i < allDesktops.length; i++) {
      d = allDesktops[i];
      d.wallpaperPlugin = 'org.kde.image';
      d.currentConfigGroup = ['Wallpaper', 'org.kde.image', 'General'];
      d.writeConfig('Image', 'file://${wallpaper}');
    }"
  '';
in {
  programs.plasma = {
    enable = true;
    hotkeys.commands = {
      switch-to-swirls = {
        name = "Switch to Swirls Wallpaper";
        key = "Meta+W";
        command = "${setWallpaper "/home/zack/Pictures/wallpapers/swirls.jpg"}";
      };
    };
  };

  systemd.user.services.set-wallpaper = {
    Unit = {
      Description = "Set wallpaper on login";
      After = [ "plasma-plasmashell.service" ];
    };
    Service = {
      Type = "oneshot";
      ExecStart = "${setWallpaper "/home/zack/Pictures/wallpapers/xenia.png"}";
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
