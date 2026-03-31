{ config, pkgs, ... }: {
  programs.firefox = {
    enable = true;
    profiles.school = {
      id = 0;
      settings = {
        "browser.startup.homepage" = "https://nixos.org";
        "privacy.resistFingerprinting" = true;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "browser.search.region" = "GB";
        "browser.search.isUS" = false;
        "browser.toolbars.bookmarks.visibility" = "always";
      };
      policies = {
        DisableTelemetry = true;
        DisableFirefoxStudies = true;
        DisablePocket = true;
        PasswordManagerEnabled = false;
        DontCheckDefaultBrowser = true;
        OfferToSaveLogins = false;
        FirefoxHome = {
          Search = true;
          TopSites = false;
          Highlights = false;
        };
      };
      extensions = [
        "uBlock0@raymondhill.net"
        "FirefoxColor@mozilla.com"
        "{874c2579-2d9a-4316-b1af-02969f81680b}"
        "{762f9885-5a13-4abd-9c77-433dcd38b8fd}"
      ];
      search = {
        default = "Google";
        engines = {
          "Google" = {
            urls = [{
              template = "https://www.google.com/search?q={searchTerms}";
            }];
            icon = "${pkgs.fetchurl {
              url = "https://www.google.com/favicon.ico";
              sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
            }}";
          };

          "Nix Packages" = {
            urls = [{
              template = "https://search.nixos.org/packages?query={searchTerms}";
            }];
            definedAliases = [ "@np" ];
          };
        };
      };
      userContent = ''
        body {
          background: #111 !important;
        }
      '';
    };
  };
}
