{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    emacs-overlay.url ="github:nix-community/emacs-overlay";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { self, nixpkgs, ... }:
  let
    inherit (self) outputs;
    specialArgs = {inherit inputs outputs;};
  in {
    nixosConfigurations.miku = nixpkgs.lib.nixosSystem {
      modules = [
        ./nixos
        ./miku
      ];
      inherit specialArgs;
    };
  };
}
