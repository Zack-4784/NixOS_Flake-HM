{
  # setting shortnames for paths frequently used - the templates path and the real firefox path
  let
    template = "${config.home.homeDirectory}/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template";
    profile  = ".mozilla/firefox/s0u782un.default";
  in
  {

    # Core config files
    home.file."${profile}/prefs.js".source = "${template}/prefs.js";
    home.file."${profile}/xulstore.json".source = "${template}/xulstore.json";
    home.file."${profile}/handlers.json".source = "${template}/handlers.json";
    home.file."${profile}/containers.json".source = "${template}/containers.json";
    home.file."${profile}/permissions.sqlite".source = "${template}/permissions.sqlite";
    home.file."${profile}/search.json.mozlz4".source = "${template}/search.json.mozlz4";

    # Extensions
    home.file."${profile}/extensions".source = "${template}/extensions";
    home.file."${profile}/extension-settings.json".source = "${template}/extension-settings.json";
    home.file."${profile}/extensions.json".source = "${template}/extensions.json";
    home.file."${profile}/extension-preferences.json".source = "${template}/extension-preferences.json";

    # Bookmarks + history
    home.file."${profile}/places.sqlite".source = "${template}/places.sqlite";
    home.file."${profile}/favicons.sqlite".source = "${template}/favicons.sqlite";

    # Passwords
    home.file."${profile}/logins.json".source = "${template}/logins.json";
    home.file."${profile}/logins-backup.json".source = "${template}/logins-backup.json";
    home.file."${profile}/key4.db".source = "${template}/key4.db";
    home.file."${profile}/cert9.db".source = "${template}/cert9.db";

    # Cookies + site storage
    home.file."${profile}/cookies.sqlite".source = "${template}/cookies.sqlite";
    home.file."${profile}/webappstore.sqlite".source = "${template}/webappstore.sqlite";
    home.file."${profile}/storage/ls-archive.sqlite".source = "${template}/ls-archive.sqlite";
    home.file."${profile}/storage.sqlite".source = "${template}/storage.sqlite";
  }
}

