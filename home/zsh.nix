{ config, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls --color=auto";
      ll = "ls -la";
      la = "ls -a";
      nsw = "sudo nixos-rebuild switch --flake ~/.config/nixos/";
    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };
}
