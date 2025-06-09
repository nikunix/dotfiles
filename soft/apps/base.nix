{pkgs, ...}:

{
  # enable needed services.
  services = {
    # audio.
    pipewire = {
      enable = true;
      pulse.enable = true;
    };

    # automount new storage devices.
    udisks2 = {
      enable = true;
      mountOnMedia = true;
    };

    # display manager.
    displayManager.ly.enable = true;

    # transfer files from phone and printing.
    gvfs.enable = true;
  };

  programs = {  
    firefox.enable = true;
  };

  environment.systemPackages = with pkgs; [
    pwvucontrol
    yazi
    mpv
    swayimg
    unrar
    unzip
  ];
}
