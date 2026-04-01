{ config, pkgs, lib, ... }:
{
  # Core config files
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/prefs.js".source = "~/.mozilla/firefox/s0u782un.default/prefs.js";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/xulstore.json".source = "~/.mozilla/firefox/s0u782un.default/xulstore.json";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/handlers.json".source = "~/.mozilla/firefox/s0u782un.default/handlers.json";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/containers.json".source = "~/.mozilla/firefox/s0u782un.default/containers.json";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/permissions.sqlite".source = "~/.mozilla/firefox/s0u782un.default/permissions.sqlite";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/search.json.mozlz4".source = "~/.mozilla/firefox/s0u782un.default/search.json.mozlz4";

  # Extensions
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extensions".source = "~/.mozilla/firefox/s0u782un.default/extensions";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extension-settings.json".source = "~/.mozilla/firefox/s0u782un.default/extension-settings.json";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extensions.json".source = "~/.mozilla/firefox/s0u782un.default/extensions.json";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extension-preferences.json".source = "~/.mozilla/firefox/s0u782un.default/extension-preferences.json";

  # Bookmarks + history
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/places.sqlite".source = "~/.mozilla/firefox/s0u782un.default/places.sqlite";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/favicons.sqlite".source = "~/.mozilla/firefox/s0u782un.default/favicons.sqlite";

  # Passwords
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/logins.json".source = "~/.mozilla/firefox/s0u782un.default/logins.json";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/logins-backup.json".source = "~/.mozilla/firefox/s0u782un.default/logins-backup.json";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/key4.db".source = "~/.mozilla/firefox/s0u782un.default/key4.db";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/cert9.db".source = "~/.mozilla/firefox/s0u782un.default/cert9.db";

  # Cookies + site storage
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/cookies.sqlite".source = "~/.mozilla/firefox/s0u782un.default/cookies.sqlite";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/webappstore.sqlite".source = "~/.mozilla/firefox/s0u782un.default/webappstore.sqlite";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/storage/ls-archive.sqlite".source = "~/.mozilla/firefox/s0u782un.default/ls-archive.sqlite";
  home.file."~/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/storage.sqlite".source = "~/.mozilla/firefox/s0u782un.default/storage.sqlite";
}

