{...}: # The one I run inside a WM.

{
  networking.hostName = "nikUnix";

  imports = [
    ../soft/nikUnix.nix

    ./usr/nikun.nix
    ./hw/nikunixHW.nix

    ./etc/nix.nix
    ./boot/boot.nix
  ];
}
