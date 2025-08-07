{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  environment.systemPackages = [
    pkgs.gnomeExtensions.blur-my-shell
    pkgs.gnomeExtensions.appindicator
    pkgs.gnomeExtensions.applications-menu
    pkgs.gnomeExtensions.fullscreen-avoider
    pkgs.gnomeExtensions.kimpanel
    pkgs.gnome-tweaks
    pkgs.seahorse
  ];

  environment.gnome.excludePackages = with pkgs; [
    geary
    totem
    epiphany
    decibels
    gnome-music
  ];

}
