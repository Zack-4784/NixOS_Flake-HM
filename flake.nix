#fkale.nix
{
  description = "My flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager.url = "github:nix-community/plasma-manager";
    plasma-manager.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager.inputs.home-manager.follows = "home-manager";
  };

  outputs = {nixpkgs, home-manager, ...} @ inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      python = pkgs.python312;
    in {
      nixosConfigurations.DeepThought = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs python;};
        modules = [
          ./Hosts/DeepThought/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = {inherit python inputs;};
            home-manager.users.zack = {
              imports = [
                ./Home-Manager/home-manager.nix
                inputs.plasma-manager.homeManagerModules.plasma-manager
              ];
            };
          }
        ];
      };
    };
}
