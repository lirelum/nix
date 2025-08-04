{
  imports = [
    ./zsh.nix
    ./starship.nix
    ./direnv.nix
    ./emacs.nix
    ./misc.nix
    ./alacritty.nix
    ./git.nix
    ./gnome.nix
  ];

  home.stateVersion = "24.05";
}
