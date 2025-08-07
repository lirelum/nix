{ pkgs, ... }:
{
  home.packages = [
    pkgs.thunderbird
    pkgs.nextcloud-client
    pkgs.libreoffice-qt6-fresh
    pkgs.gnucash
    pkgs.vesktop
    pkgs.anki
    pkgs.jellyfin-media-player
  ];
}
