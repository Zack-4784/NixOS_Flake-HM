{ lib, pkgs, ... }:

{
  home = {
    packages = with pkgs; [
      git
      # pkgs go here
    ];

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
      alias testing='echo penis'
    '';
    force = true;
  };

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
      cursor_shape            = "beam";
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

    # Built‑in theme
    themeFile = "ChallengerDeep";

    extraConfig = ''
      # Extra raw kitty.conf content

      symbol_map U+E000-U+E00A,U+EA60-U+EBEB Symbols Nerd Font Mono
      selection_foreground #000000
      selection_background #ffffff
    '';

  };

}
