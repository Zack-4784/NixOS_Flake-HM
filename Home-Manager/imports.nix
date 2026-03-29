{ config, pkgs, lib, ... }:

{
  home = {
    username = "zack";
    homeDirectory = "/home/zack";
    stateVersion = "25.11";
  };

  imports = [
    ./git.nix
    ./bash.nix
    ./kitty.nix
    ./spotify-player.nix
  ];
}
