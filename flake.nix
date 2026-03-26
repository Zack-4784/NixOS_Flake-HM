{
  description = "My NixOS + Home Manager configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
    in {
      # NixOS system configuration
      nixosConfigurations = {
        DeepThought = lib.nixosSystem {
          inherit system;
          modules = [
            ./Hosts/DeepThought/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.zack = {
                imports = [
                  ./Home-Manager/home-manager.nix
                  #./modules/bash.nix
                  #./modules/kitty.nix
                ];
              };
            }
          ];
        };
      };
    };
}
