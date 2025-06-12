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
      workstyle
      
      # For adjusting brightness.
      brightnessctl
    ];
  };

  # XDG stuff
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };
}
