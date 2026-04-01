#fkale.nix
{
  description = "My flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {nixpkgs, ...} @ inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      python = pkgs.python312;
    in {
      nixosConfigurations.DeepThought = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs; inherit python;};
        modules = [
          ./Hosts/DeepThought/configuration.nix
        ];
      };
    };
}
