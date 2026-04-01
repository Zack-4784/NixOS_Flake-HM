#configuration.nix
{pkgs, lib, inputs, ...}: {
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.default
  ];

  environment.systemPackages = with pkgs; [
    kdePackages.kate
    firefox
    spotify-player
    libreoffice-qt
    vscodium
    fastfetch
    figlet
    fzf
    sqlitebrowser
    python312
    home-manager
    git
    gitFull
    vlc
    gnumake
    rustup
    gcc
    kitty
    unixtools.route
    planify
    age
    bat
    helix
  ];

  system.stateVersion = "25.11";

  users.users.zack = {
    isNormalUser = true;
    description = "Zack";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "DeepThought";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/London";
  i18n.defaultLocale = "en_GB.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  console.keyMap = "uk";
  services.printing.enable = true;
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];
  documentation.dev.enable = false;
  documentation.doc.enable = false;
}
