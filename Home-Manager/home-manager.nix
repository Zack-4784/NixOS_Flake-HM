{pkgs, lib, ...}: {
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
    #./Program-Configurations/kate.nix
    ./Program-Configurations/helix.nix
  ];
}
