{pkgs, ...}: 

{
  environment.systemPackages = [
    pkgs.wine64
  ];
}
