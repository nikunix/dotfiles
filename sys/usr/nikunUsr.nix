{...}: # My user account.

{
  # Define user account.
  users.users.nikun = {
    isNormalUser = true;
    extraGroups = [
      "wheel" # Enable ‘sudo’ for the user.
      "networkmanager" # Use networkmanager without sudo.
    ];
  };

  # Set homemanager for user.
  home-manager.users.nikun = import ../../home/nikun.nix;
}
