{
  services.pipewire.wireplumber.extraConfig."10-alsa-soft-mixer" = {
    "monitor.alsa.rules" = [
      {
        matches = [
          { "device.name" = "alsa_card.pci-0000_04_00.6"; }
        ];
        actions.update-props = {
          "api.alsa.soft-mixer" = true;
        };
      }
    ];
  };
  hardware.alsa.enablePersistence = true;
}
