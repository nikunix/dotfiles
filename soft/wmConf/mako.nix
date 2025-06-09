{config, ...}:

{
  services.mako = {
    enable = true;
    settings = {
      max-visible = 3;
      border-size = 3;
      font = "CaskaydiaMono Nerd Font";
      text-color = "#${config.col.txtCol}";
      border-color = "#${config.col.blue1}";
      background-color = "#${config.col.bgCol}";
    };
  };
}
