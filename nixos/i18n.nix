{lib, ...}: {
  time.timeZone = lib.mkDefault "America/New_York";

  i18n = {
    defaultLocale = "ja_JP.UTF-8";
  };
}
