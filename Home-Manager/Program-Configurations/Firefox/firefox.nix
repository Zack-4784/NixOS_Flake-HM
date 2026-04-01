{ config, pkgs, lib, ... }:
{
  # Core config files
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/prefs.js".source = "/home/zack/.mozilla/firefox/s0u782un.default/prefs.js";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/xulstore.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/xulstore.json";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/handlers.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/handlers.json";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/containers.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/containers.json";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/permissions.sqlite".source = "/home/zack/.mozilla/firefox/s0u782un.default/permissions.sqlite";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/search.json.mozlz4".source = "/home/zack/.mozilla/firefox/s0u782un.default/search.json.mozlz4";

  # Extensions
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extensions".source = "/home/zack/.mozilla/firefox/s0u782un.default/extensions";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extension-settings.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/extension-settings.json";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extensions.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/extensions.json";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/extension-preferences.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/extension-preferences.json";

  # Bookmarks + history
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/places.sqlite".source = "/home/zack/.mozilla/firefox/s0u782un.default/places.sqlite";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/favicons.sqlite".source = "/home/zack/.mozilla/firefox/s0u782un.default/favicons.sqlite";

  # Passwords
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/logins.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/logins.json";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/logins-backup.json".source = "/home/zack/.mozilla/firefox/s0u782un.default/logins-backup.json";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/key4.db".source = "/home/zack/.mozilla/firefox/s0u782un.default/key4.db";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/cert9.db".source = "/home/zack/.mozilla/firefox/s0u782un.default/cert9.db";

  # Cookies + site storage
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/cookies.sqlite".source = "/home/zack/.mozilla/firefox/s0u782un.default/cookies.sqlite";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/webappstore.sqlite".source = "/home/zack/.mozilla/firefox/s0u782un.default/webappstore.sqlite";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/storage/ls-archive.sqlite".source = "/home/zack/.mozilla/firefox/s0u782un.default/ls-archive.sqlite";
  home.file."/home/zack/documents/NixOS/Home-Manager/Program-Configuratoins/Firefox/Firefox-Files-Template/storage.sqlite".source = "/home/zack/.mozilla/firefox/s0u782un.default/storage.sqlite";
}

