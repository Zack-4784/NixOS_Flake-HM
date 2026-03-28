{ lib, pkgs, ... }:

{
  home = {
    username = "zack";
    homeDirectory = "/home/zack";
    stateVersion = "25.11";
  };

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Zack-4784";
        email = "z-l-f@hotmail.com";
      };
    };
  };
#  _               _
# | |__   __ _ ___| |__
# | '_ \ / _` / __| '_ \
# | |_) | (_| \__ \ | | |
# |_.__/ \__,_|___/_| |_|

  home.file.".bashrc" = {

    text = ''
      export EDITOR="nano"
      export PATH="$HOME/bin:$PATH"

      alias ll='ls -l'
      alias la='ls -a'
      alias lla='ls -la'
      alias ff='fastfetch'
      alias bcf='nano ~/.bashrc'
      alias ga='git add'
      alias gc='git commit -m'
      alias gaa='git add ./'
      alias agr='cd ~/documents/NixOS && git add ./ && git commit -m "AUTOMATED REBUILD" && sudo nixos-rebuild switch --flake .#DeepThought && cd ~/'
      alias reb='sudo nixos-rebuild switch --flake ~/documents/NixOS#DeepThought'
      alias cu='nix-collect-garbage -d'
      alias cs='cat ~/documents/cheatsheet'
      alias bc='cat ~/.bashrc'
      alias gin='cd ~/documents/NixOS'

      bind -s 'set completion-ignore-case on'
    '';
    force = true;
  };
#  _    _ _   _
# | | _(_) |_| |_ _   _
# | |/ / | __| __| | | |
# |   <| | |_| |_| |_| |
# |_|\_\_|\__|\__|\__, |
#                 |___/

  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrains Mono";
      size = 11;
    };
    settings = {
      # Appearance
      background_opacity      = "1";
      window_padding_width    = 8;
      hide_window_decorations = "no";
      confirm_os_window_close = 0;
      # Cursor
      cursor_shape            = "block";
      cursor_blink_interval   = "0.5";
      # Scrollback
      scrollback_lines        = 10000;
      # Bell
      enable_audio_bell       = "no";
      visual_bell_duration    = "0.0";
      # Tab bar
      tab_bar_style           = "powerline";
      tab_powerline_style     = "angled";
      tab_bar_edge            = "top";
      # Performance
      repaint_delay           = 10;
      input_delay             = 3;
      sync_to_monitor         = "yes";
    };
    keybindings = {
      "ctrl+t"     = "new_tab_with_cwd";
      "ctrl+k"     = "previous_tab";
      "ctrl+l"     = "next_tab";
      "ctrl+equal" = "increase_font_size";
      "ctrl+minus" = "decrease_font_size";
      "ctrl+r"     = "load_config_file";
    };
    themeFile = "ChallengerDeep";
    extraConfig = ''
      # Extra raw kitty.conf content

      symbol_map U+E000-U+E00A,U+EA60-U+EBEB Symbols Nerd Font Mono
      #selection_foreground #000000
      #selection_background #ffffff
      hide_window_decorations = "yes";
    '';
  };
}
