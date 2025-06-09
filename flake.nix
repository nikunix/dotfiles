{
  description = "Nikunix' NixOS config.";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, ...}@inputs:
  let
    # Specify my type of system.
    system = "x86_64-linux";
  in
  {
    # System configurations.
    nixosConfigurations = {
      # The old black box.
      yasui = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./sys/yasui.nix
          inputs.home-manager.nixosModules.home-manager
        ];
      };
    };
  };
}
