{...}: # Yasui means cheap, but it's still alright.

{
  networking.hostName = "yasui";

  imports = [
    ../soft/apps/base.nix
    ../soft/apps/code.nix
    ../soft/apps/font.nix
    ../soft/apps/sway.nix

    ./usr/nikunUsr.nix
    ./hw/yasuiHW.nix

    ./etc/nix.nix
    ./boot/boot.nix
  ];
}
