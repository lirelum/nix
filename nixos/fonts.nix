{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    packages = [
      pkgs.noto-fonts
      pkgs.twemoji-color-font
      pkgs.nerd-fonts.symbols-only
      pkgs.noto-fonts-cjk-sans
      pkgs.noto-fonts-cjk-serif
      pkgs.source-han-code-jp
    ];
  };
}
