{ config, pkgs, lib, ... }:

{
  home = {
    username = "zack";
    homeDirectory = "/home/zack";
    stateVersion = "25.11";
  };

  imports = [
    ./Program-Configurations/git.nix
    ./Program-Configurations/bash.nix
    ./Program-Configurations/kitty.nix
    ./Program-Configurations/spotify-player.nix
    #./Program-Configurations/Firefox/firefox.nix
  ];

  home.file.".local/share/icons/firefox-custom.png".source =
  ./Program-Configurations/Firefox/FFIC.png;
  xdg.desktopEntries.firefox = {
    name = "Firefox";
    genericName = "Web Browser";
    exec = "firefox %u";
    terminal = false;
    type = "Application";
    icon = "${config.home.homeDirectory}/.local/share/icons/firefox-custom.png";

    categories = [ "Network" "WebBrowser" ];
  };
}
