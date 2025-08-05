{
  networking.networkmanager.enable = true;
  services.avahi = {
    enable = true;
    ipv4 = true;
    ipv6 = false;
    nssmdns4 = true;
    nssmdns6 = true;
  };
}
