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

#                  _   _  __       
#  ___ _ __   ___ | |_(_)/ _|_   _ 
# / __| '_ \ / _ \| __| | |_| | | |
# \__ \ |_) | (_) | |_| |  _| |_| |
# |___/ .__/ \___/ \__|_|_|  \__, |
#     |_|                    |___/ 

  programs.spotify-player = {
    enable = true;

    [
      {
        command = "NextTrack";
        key_sequence = ">";
      }
      {
        command = "PreviousTrack";
        key_sequence = "<";
      }
      {
        command = "ResumePause";
        key_sequence = "space";
      }
      {
        command = "PlayRandom";
        key_sequence = "~";
      }
      {
        command = "Repeat";
        key_sequence = "C-r";
      }
      {
        command = "Shuffle";
        key_sequence = "C-s";
      }
      {
        command = "SeakStart";
        key_sequence = "^";
      }
      {
        command = "Quit";
        key_sequence = "C-c";
      }
      {
        command = "ClosePopup";
        key_sequence = "q";
      }
      {
        command = "SelectNextOrScrollDown";
        key_sequence = "down";
      }
      {
        command = "SelectPreviousOrScrollUp";
        key_sequence = "up";
      }
      {
        command = "PageSelectNextOrScrollDown";
        key_sequence = "page_down";
      }
      {
        command = "PageSelectPreviousOrScrollUp";
        key_sequence = "page_up";
      }
      {
        command = "SelectFirstOrScrollToTop";
        key_sequence = "home";
      }
      {
        command = "SelectLastOrScrollToBottom";
        key_sequence = "end";
      }
      {
        command = "ChooseSelected";
        key_sequence = "enter";
      }
      {
        command = "RefreshPlayback";
        key_sequence = "r";
      }
      {
        command = "ShowActionsOnSelectedItem";
        key_sequence = "C-space";
      }
      {
        command = "ShowActionsOnCurrentTrack";
        key_sequence = "a";
      }
      {
        command = "ShowActionsOnCurrentContext";
        key_sequence = "A";
      }
      {
        command = "AddSelectedItemToQueue";
        key_sequence = "|";
      }
      {
        command = "FocusNextWindow";
        key_sequence = "tab";
      }
      {
        command = "FocusPreviousWindow";
        key_sequence = "backtab ";
      }
      {
        command = "SwitchTheme";
        key_sequence = "T";
      }
      {
        command = "SwitchDevice";
        key_sequence = "D";
      }
      {
        command = "Search";
        key_sequence = "/";
      }
      {
        command = "BrowseUserPlaylists";
        key_sequence = "u p";
      }
      {
        command = "BrowseUserFollowedArtists";
        key_sequence = "u a";
      }
      {
        command = "BrowseUserSavedAlbums";
        key_sequence = "u A";
      }
      {
        command = "CurrentlyPlayingContextPage";
        key_sequence = "g space";
      }
      {
        command = "TopTrackPage";
        key_sequence = "g t";
      }
      {
        command = "RecentlyPlayedTrackPage";
        key_sequence = "g r";
      }
      {
        command = "LikedTrackPage";
        key_sequence = "g y";
      }
      {
        command = "LyricsPage";
        key_sequence = "l";
      }
      {
        command = "LibraryPage";
        key_sequence = "g l";
      }
      {
        command = "SearchPage";
        key_sequence = "?";
      }
      {
        command = "BrowsePage";
        key_sequence = "b";
      }
      {
        command = "Queue";
        key_sequence = "=";
      }
      {
        command = "OpenCommandHelp";
        key_sequence = "!";
      }
      {
        command = "PreviousPage";
        key_sequence = "backspace";
      }
      {
        command = "OpenSpotifyLinkFromClipboard";
        key_sequence = "o";
      }
      {
        command = "SortTrackByTitle";
        key_sequence = "s t";
      }
      {
        command = "SortTrackByArtists";
        key_sequence = "s a";
      }
      {
        command = "SortTrackByAlbum";
        key_sequence = "s A";
      }
      {
        command = "SortTrackByAddedDate";
        key_sequence = "s D";
      }
      {
        command = "SortTrackByDuration";
        key_sequence = "s d";
      }
      {
        command = "SortLibraryAlphabetically";
        key_sequence = "s q";
      }
      {
        command = "SortLibraryByRecent";
        key_sequence = "s r";
      }
      {
        command = "ReverseOrder";
        key_sequence = "R";
      }
      {
        command = "MovePlaylistItemUp";
        key_sequence = "C-k";
      }
      {
        command = "MovePlaylistItemDown";
        key_sequence = "C-j";
      }
      {
        command = "CreatePlaylist";
        key_sequence = "N";
      }
      {
        command = "JumpToCurrentTrackInContext";
        key_sequence = "g c";
      }
      {
        command = "JumpToHighlightTrackInContext";
        key_sequence = "g h";
      }
    ]
  }
}
