{
  programs.alacritty = {
    enable = true;
    settings = {
      env.TERM = "xterm-256color";
      font = {
        normal = {
          family = "Source Han Code JP";
          style = "Regular";
        };
        size = 11;
      };
    };

  };
}
