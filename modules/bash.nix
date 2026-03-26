{ config, pkgs, ... }:

{
  # This creates the file: ~/.bashrc
  home.file.".bashrc" = {

    text = ''

      export EDITOR="nano"
      export PATH="$HOME/bin:$PATH"

      alias ll='ls -l'
      alias la='ls -a'
      alias lla='ls -la'
      alias ff='fastfetch'
      alias bashconf='nano ~/.bashrc'
      alias gita='git add .'
      alias gitc='git commit -m'
      alias sgita='sudo git add .'
      alias sgitc='sudo git commit -m'
      alias gitauto='cd /etc/nixos && sudo git add ./ && sudo git commit -m "AUTOMATED REBUILD"'
      alias reb='sudo nixos-rebuild switch --flake .#DeepThought && cd ~/'
      alias cleanup='nix-collect-garbage -d'
      alias cs='cat ~/documents/cheatsheet'
      alias bashcheck='cat ~/.bashrc'
      alias gin='cd /etc/nixos'
    '';
    force = true;
  };
}
