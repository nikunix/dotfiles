{...}: # Yasui means cheap, but it's still alright.

{
  networking.hostName = "yasui";

  imports = [
    ../soft/softYasui.nix

    ./usr/nikunUsr.nix
    ./hw/yasuiHW.nix

    ./etc/time.nix
    ./etc/nix.nix
    ./boot/boot.nix
  ];
}
