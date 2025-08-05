{ lib, pkgs, ... }:
{
  time.timeZone = lib.mkDefault "America/New_York";

  i18n = {
    defaultLocale = "ja_JP.UTF-8";
    inputMethod = {
      enable = true;
      type = "ibus";
      ibus.engines = with pkgs.ibus-engines; [mozc-ut];
    };
  };
}
