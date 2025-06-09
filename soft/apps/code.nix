{pkgs, ...}:

{
  programs.git.enable = true;

  environment.systemPackages = with pkgs;[
    cmakeMinimal
    gcc
    rustup
    ccls
    nil
  ];
}
