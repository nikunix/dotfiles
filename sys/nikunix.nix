{...}: # The one on my laptop.

{
  networking.hostName = "nikUnix";

  imports = [
    ../soft/softNikunix.nix

    ./usr/nikunUsr.nix
    ./hw/nikunixHW.nix

    ./etc/blue.nix
    ./etc/time.nix
    ./etc/nix.nix
    ./boot/boot.nix
  ];
}
