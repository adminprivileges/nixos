{ config, pkgs, ... }:

{
  # Add the Home Manager channel
  nixpkgs.config = {
    packageOverrides = pkgs: with pkgs; {
      # Home Manager channel
      home-manager = import <home-manager/nixos> {
        system = "x86_64-linux"; x# or "aarch64-linux"
      };
    };
  };

  # Configure Home Manager for a user (e.g., your user)
  users.users.th= {
    isNormalUser = true;
    extraGroups = [ "wheel" ];  # add your user to groups like 'wheel' if needed
  };

  # Set your Home Manager config file location
  home-manager.users.th = import /home/th/.config/home-manager/home.nix;
}

