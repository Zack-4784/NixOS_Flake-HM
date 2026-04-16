{pkgs, ...}: {
  programs.plasma = {
    enable = true;
    workspace.wallpaper = "/home/zack/Pictures/wallpapers/xenia.png";
    hotkeys.commands = {
      switch-to-swirls = {
        name = "Switch to Swirls Wallpaper";
        key = "Meta+W";
        command = "${pkgs.writeShellScript "set-swirls" ''
          qdbus6 org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
          var allDesktops = desktops();
          for (i=0; i < allDesktops.length; i++) {
            d = allDesktops[i];
            d.wallpaperPlugin = 'org.kde.image';
            d.currentConfigGroup = ['Wallpaper', 'org.kde.image', 'General'];
            d.writeConfig('Image', 'file:///home/zack/Pictures/wallpapers/swirls.jpg');
          }"
        ''}";
      };
    };
  };
}
