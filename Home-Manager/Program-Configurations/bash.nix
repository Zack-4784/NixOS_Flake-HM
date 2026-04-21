{pkgs, lib, ...}: {
  programs.bash = {
    enable = true;

    initExtra = ''
      export EDITOR="nano"
      export PATH="$HOME/bin:$PATH"
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
