{ pkgs, ... }:
{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;
    extraPackages = epkgs: [ epkgs.vterm ];
  };
  home.packages = with pkgs; [
    git
    ripgrep
    coreutils
    fd
    clang
  ];
}
