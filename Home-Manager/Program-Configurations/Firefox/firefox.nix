{
  # -------------------------
  # Core config files
  # -------------------------
  home.file."$HOME/.mozilla/firefox/s0u782un.default/prefs.js".source =
    ./Firefox-Files-Template/prefs.js;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/xulstore.json".source =
    ./Firefox-Files-Template/xulstore.json;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/handlers.json".source =
    ./Firefox-Files-Template/handlers.json;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/containers.json".source =
    ./Firefox-Files-Template/containers.json;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/permissions.sqlite".source =
    ./Firefox-Files-Template/permissions.sqlite;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/search.json.mozlz4".source =
    ./Firefox-Files-Template/search.json.mozlz4;


  # -------------------------
  # Extensions directory
  # -------------------------
  home.file."$HOME/.mozilla/firefox/s0u782un.default/extensions" = {
    source = ./Firefox-Files-Template/extensions;
    recursive = true;
  };

  home.file."$HOME/.mozilla/firefox/s0u782un.default/extension-settings.json".source =
    ./Firefox-Files-Template/extension-settings.json;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/extensions.json".source =
    ./Firefox-Files-Template/extensions.json;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/extension-preferences.json".source =
    ./Firefox-Files-Template/extension-preferences.json;


  # -------------------------
  # Bookmarks + history
  # -------------------------
  home.file."$HOME/.mozilla/firefox/s0u782un.default/places.sqlite".source =
    ./Firefox-Files-Template/places.sqlite;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/favicons.sqlite".source =
    ./Firefox-Files-Template/favicons.sqlite;


  # -------------------------
  # Passwords
  # -------------------------
  home.file."$HOME/.mozilla/firefox/s0u782un.default/logins.json".source =
    ./Firefox-Files-Template/logins.json;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/logins-backup.json".source =
    ./Firefox-Files-Template/logins-backup.json;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/key4.db".source =
    ./Firefox-Files-Template/key4.db;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/cert9.db".source =
    ./Firefox-Files-Template/cert9.db;


  # -------------------------
  # Cookies + site storage
  # -------------------------
  home.file."$HOME/.mozilla/firefox/s0u782un.default/cookies.sqlite".source =
    ./Firefox-Files-Template/cookies.sqlite;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/webappstore.sqlite".source =
    ./Firefox-Files-Template/webappstore.sqlite;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/ls-archive.sqlite".source =
    ./Firefox-Files-Template/ls-archive.sqlite;

  home.file."$HOME/.mozilla/firefox/s0u782un.default/storage.sqlite".source =
    ./Firefox-Files-Template/storage.sqlite;
}
