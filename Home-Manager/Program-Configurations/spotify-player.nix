{pkgs, lib, ...}: {
  programs.spotify-player = {
    enable = true;
    settings = {
      theme = "mytheme";
      device.volume = 100;
    };
    themes = [
      {
        name = "mytheme";
        component_style = {
          playback_metadata = { fg = "White"; };
        };
      }
    ];
    keymaps = [
      {command = "NextTrack"; key_sequence = ">";}
      {command = "PreviousTrack"; key_sequence = "<";}
      {command = "ResumePause"; key_sequence = "space";}
      {command = "PlayRandom"; key_sequence = "~";}
      {command = "Repeat"; key_sequence = "C-r";}
      {command = "Shuffle"; key_sequence = "C-s";}
      {command = "SeekStart"; key_sequence = "^";}
      {command = "Quit"; key_sequence = "C-c";}
      {command = "ClosePopup"; key_sequence = "q";}
      {command = "SelectNextOrScrollDown"; key_sequence = "down";}
      {command = "SelectPreviousOrScrollUp"; key_sequence = "up";}
      {command = "PageSelectNextOrScrollDown"; key_sequence = "page_down";}
      {command = "PageSelectPreviousOrScrollUp"; key_sequence = "page_up";}
      {command = "SelectFirstOrScrollToTop"; key_sequence = "home";}
      {command = "SelectLastOrScrollToBottom"; key_sequence = "end";}
      {command = "ChooseSelected"; key_sequence = "enter";}
      {command = "RefreshPlayback"; key_sequence = "r";}
      {command = "ShowActionsOnSelectedItem"; key_sequence = "C-space";}
      {command = "ShowActionsOnCurrentTrack"; key_sequence = "a";}
      {command = "ShowActionsOnCurrentContext"; key_sequence = "A";}
      {command = "AddSelectedItemToQueue"; key_sequence = "|";}
      {command = "FocusNextWindow"; key_sequence = "tab";}
      {command = "FocusPreviousWindow"; key_sequence = "C-A";}
      {command = "SwitchTheme"; key_sequence = "T";}
      {command = "SwitchDevice"; key_sequence = "D";}
      {command = "Search"; key_sequence = "/";}
      {command = "BrowseUserPlaylists"; key_sequence = "u p";}
      {command = "BrowseUserFollowedArtists"; key_sequence = "u a";}
      {command = "BrowseUserSavedAlbums"; key_sequence = "u A";}
      {command = "CurrentlyPlayingContextPage"; key_sequence = "g space";}
      {command = "TopTrackPage"; key_sequence = "g t";}
      {command = "RecentlyPlayedTrackPage"; key_sequence = "g r";}
      {command = "LikedTrackPage"; key_sequence = "g y";}
      {command = "LyricsPage"; key_sequence = "l";}
      {command = "LibraryPage"; key_sequence = "g l";}
      {command = "SearchPage"; key_sequence = "?";}
      {command = "BrowsePage"; key_sequence = "b";}
      {command = "Queue"; key_sequence = "=";}
      {command = "OpenCommandHelp"; key_sequence = "!";}
      {command = "PreviousPage"; key_sequence = "backspace";}
      {command = "OpenSpotifyLinkFromClipboard"; key_sequence = "o";}
      {command = "SortTrackByTitle"; key_sequence = "s t";}
      {command = "SortTrackByArtists"; key_sequence = "s a";}
      {command = "SortTrackByAlbum"; key_sequence = "s A";}
      {command = "SortTrackByAddedDate"; key_sequence = "s D";}
      {command = "SortTrackByDuration"; key_sequence = "s d";}
      {command = "SortLibraryAlphabetically"; key_sequence = "s q";}
      {command = "SortLibraryByRecent"; key_sequence = "s r";}
      {command = "ReverseTrackOrder"; key_sequence = "R";}
      {command = "MovePlaylistItemUp"; key_sequence = "C-k";}
      {command = "MovePlaylistItemDown"; key_sequence = "C-j";}
      {command = "CreatePlaylist"; key_sequence = "N";}
      {command = "JumpToCurrentTrackInContext"; key_sequence = "g c";}
      {command = "JumpToHighlightTrackInContext"; key_sequence = "g h";}
    ];
  };
}
