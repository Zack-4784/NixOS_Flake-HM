{ pkgs, lib, ... }:

let
  addons = {
    ublock-origin = pkgs.fetchFirefoxAddon {
      name = "ublock-origin";
      url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
      hash = "sha256-8nMNKHcAV2OkXXZXSYkuk29JyucT0o96puoxRFS4nPE=";
    };

    return-youtube-dislike = pkgs.fetchFirefoxAddon {
      name = "return-youtube-dislike";
      url = "https://addons.mozilla.org/firefox/downloads/latest/return-youtube-dislikes/latest.xpi";
      hash = "sha256-LTOXfOkydlN1QxYfjgXDYS9xVWhArh65gjkoS4+LoZ4=";
    };

    firefox-color = pkgs.fetchFirefoxAddon {
      name = "firefox-color";
      url = "https://addons.mozilla.org/firefox/downloads/latest/firefox-color/latest.xpi";
      hash = "sha256-t/sHtniPcjPdYiPngOGJtMe5VsJcQEk8KNcCBJMkkpI=";
    };

    theme-16e5f60f207a1 = pkgs.fetchFirefoxAddon {
      name = "16e5f60f207a1";
      url = "https://addons.mozilla.org/firefox/downloads/latest/16e5f60f207a1/latest.xpi";
      hash = "sha256-lIPciohxSyaBNlzPPaxj1jV8qFAbm/nXRpA8Am/Xrc0=";
    };
  };
in
{
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;

    profiles.default = {
      isDefault = true;

      extensions = {
        force = true;
        packages = builtins.attrValues addons;
      };
    };
  };
}
