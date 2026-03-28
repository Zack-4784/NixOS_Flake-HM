{
  description = "My NixOS + Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
      python = pkgs.python312;
    in {
      # NixOS system configuration
      nixosConfigurations = {
        DeepThought = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit pkgs python; };
          modules = [
            ./Hosts/DeepThought/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit python; };
              home-manager.users.zack = {
                imports = [
                  ./Home-Manager/home-manager.nix
                ];
              };
            }
          ];
        };
      };
    };
}
