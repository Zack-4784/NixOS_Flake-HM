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
      extensions = with pkgs.firefox-addons; [
        ublock-origin
        firefox-color
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

      bookmarks = [
        {name = "TB"; url = "https://outlook.office.com/mail/0/?deeplink=mail%2F";}
        {name = "CA"; url = "https://outlook.office.com/mail/0/?deeplink=mail%2F";}
        {name = "MC"; url = "https://copilot.microsoft.com/";}
        {name = "NM"; url = "https://nixos.org/manual/nixpkgs/stable/#id-1.4";}
        {name = "MT"; url = "https://teams.cloud.microsoft/";}
        {name = "MB"; url = "https://www.mybib.com/#/projects/MDJWpz/citations";}
        {name = "GD"; url = "https://drive.google.com/drive/u/1/my-drive?hl=en_GB";}
        {name = "LL"; url = "https://labex.io/linuxjourney";}
        {name = "KB"; url = "https://www.kerboodle.com/users/login";}
        {name = "YT"; url = "https://www.youtube.com/";}
        {name = "WW"; url = "https://word.cloud.microsoft/?wdOrigin=WORDONLINE.SHELL";}
        {name = "HM"; url = "https://github.com/Evertras/simple-homemanager/blob/main/03-explain-inputs.md";}
        {name = "RN"; url = "https://nixos.org/manual/nixos/stable/release-notes";}
        {name = "MN"; url = "https://mynixos.com/home-manager/options";}
        {name = "EX"; url = "https://github.com/jonringer/nixpkgs-config/blob/master/home.nix";}
        {name = "KT"; url = "https://sw.kovidgoyal.net/kitty/conf/#sample-kitty-conf";}
        {name = "CS"; url = "https://adacomputerscience.org/exam_specifications_england#a_level/ocr";}
        {name = "LM"; url = "https://peterhigginson.co.uk/lmc/";}
        {name = "HT"; url = "https://adacomputerscience.org/concepts/webtech_html";}
        {name = "OW"; url = "https://overthewire.org/wargames/bandit/bandit0.html";}
        {name = "OW"; url = "https://overthewire.org/wargames/bandit/bandit7.html";}
        {name = "WH"; url = "https://wheelofnames.com/";}
        {name = "RP"; url = "https://www.raspberrypi.com/products/raspberry-pi-zero/";}
        {name = "SP"; url = "https://open.spotify.com/";}
        {name = "CL"; url = "https://imagecolorpicker.com/";}
        {name = "FT"; url = "https://color.firefox.com/?utm_source=firefox-browser&utm_medium=firefox-browser&utm_content=theme-footer-link";}
      ];

    };
  };
}
