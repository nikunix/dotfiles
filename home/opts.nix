{config, lib, ...}: # Options to be potentially set in home.nix.

{
  options = {

    # Name of the user.
    name =  lib.mkOption {default = "nikun";};

    # Set colors(Default: Tokyo Night).
    col = {
      black1 = lib.mkOption   {default = "15161e";};
      black2 = lib.mkOption   {default = "414868";};
      red1 = lib.mkOption     {default = "f7768e";};
      red2 = lib.mkOption     {default = "ff899d";};
      green1 = lib.mkOption   {default = "9ece6a";};
      green2 = lib.mkOption   {default = "9ece6a";};
      yellow1 = lib.mkOption  {default = "e0af68";};
      yellow2 = lib.mkOption  {default = "faba4a";};
      blue1 = lib.mkOption    {default = "7aa2f7";};
      blue2 = lib.mkOption    {default = "8db0ff";};
      magenta1 = lib.mkOption {default = "bb9af7";};
      magenta2 = lib.mkOption {default = "c7a9ff";};
      cyan1 = lib.mkOption    {default = "7dcfff";};
      cyan2 = lib.mkOption    {default = "a4daff";};
      white1 = lib.mkOption   {default = "a9b1d6";};
      white2 = lib.mkOption   {default = "c0caf5";};
      
      priCol = lib.mkOption {default = "${config.col.red1}";};
      bgCol = lib.mkOption {default = "${config.col.black1}";};
      txtCol = lib.mkOption {default = "${config.col.white2}";};
    };
  };

  imports = [
    ../soft/conf/conf.nix
    ../soft/wmConf/wm.nix
  ];
}
