{inputs, config, pkgs, ...}: # Home file for Nikun user.

{
  programs.home-manager.enable = true;

  # Enable home manager for all users.
  home = {
    username = "${config.name}";
    homeDirectory = "/home/${config.name}";
    stateVersion = "25.05";
  };

  gtk = {
    enable = true;
    theme = {
      name = "Tokyonight-Dark";
      package = pkgs.tokyonight-gtk-theme;
    };

    iconTheme = {
      name = "Tela-purple";
      package = pkgs.tela-icon-theme;
    };
  };

  imports = [
    ./opts.nix
  ];
}
