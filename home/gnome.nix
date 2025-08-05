{ pkgs, ... }:
{
  home.packages = [
    pkgs.adw-gtk3
  ];
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "adw-gtk3-dark";
    };
  };
}
