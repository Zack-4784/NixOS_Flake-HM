{ config, pkgs, lib, ... }: {
  programs.firefox = {
    enable = true;

    profiles.school = {
      id = 0;
    };
  };






}
