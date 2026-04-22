{pkgs, lib, ...}: {
  programs.bash = {
    enable = true;

    initExtra = ''
      export EDITOR="nano"
      export PATH="$HOME/bin:$PATH"
      PS1='$(if [ $EUID -eq 0 ]; then echo "\[\e[1;31m\][root]"; else echo "\[\e[1;32m\][\h]"; fi) \[\e[0m\]'
    '';

    shellAliases = {
      ll  = "ls -l";
      la  = "ls -a";
      lla = "ls -la";
      ff  = "fastfetch";
      bcf = "nano ~/.bashrc";
      ga  = "git add";
      gc  = "git commit -m";
      gaa = "git add ./";
      agr = ''
        cd ~/documents/NixOS \
        && git add ./ \
        && git commit -m "AUTOMATED REBUILD" \
        && sudo nixos-rebuild switch --flake .#DeepThought \
        && cd ~/
      '';
      reb = "sudo nixos-rebuild switch --flake ~/documents/NixOS#DeepThought";
      cu  = "sudo nix-collect-garbage -d";
      cs  = "cat ~/documents/cheatsheet";
      bc  = "cat ~/.bashrc";
      gin = "cd ~/documents/NixOS";
      mu  = "spotify_player";
      gp  = "git push -u origin main";
      upgrade = "gin && nix flake update && agr";
    };
  };
}
