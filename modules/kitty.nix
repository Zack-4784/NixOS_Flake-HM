{ config, pkgs, lib, ... }:

{
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
