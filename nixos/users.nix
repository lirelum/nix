{pkgs, ...}: {
  users.users.autumn = {
    isNormalUser = true;
    description = "autumn";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;
}
