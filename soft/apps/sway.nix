{pkgs, ...}: # Enable swayWM.

{
  # Sway.
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs; [
      # Screenshot script.
      (import ../wmConf/screenshot.nix {inherit pkgs;})

      # Dynamically rename workspaces.
      wofi
      workstyle
      
      # For adjusting brightness.
      brightnessctl

      # Screenshot stuff.
      grim
      libnotify
      wl-clipboard
      slurp
      swappy
      jq
    ];
  };

  # XDG stuff
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };
}
