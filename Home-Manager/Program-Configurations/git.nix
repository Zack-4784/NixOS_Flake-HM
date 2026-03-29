{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Zack-4784";
        email = "z-l-f@hotmail.com";
      };
    };
  };
}
