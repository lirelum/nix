{ inputs, pkgs, ... }:
{
  nix.settings = {
    substituters = [ "https://nix-community.cachix.org" ];
    trusted-public-keys = [ "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=" ];
  };
  nixpkgs.overlays = [
    inputs.emacs-overlay.overlays.default
  ];
  environment.systemPackages = [
    pkgs.git
    pkgs.emacsPgtk
    pkgs.ripgrep
    pkgs.coreutils
    pkgs.fd
    pkgs.clang
  ];
}
