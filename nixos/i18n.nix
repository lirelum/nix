{ lib, pkgs, ... }:
{
  time.timeZone = lib.mkDefault "America/New_York";

  i18n = {
    defaultLocale = "ja_JP.UTF-8";
    inputMethod = {
      enable = true;
      type = "fcitx5";
      fcitx5.addons = [
        pkgs.fcitx5-mozc-ut
        pkgs.fcitx5-gtk
      ];
    };
  };

}
