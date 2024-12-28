{
  description = "My system config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }: {
    # Define the nixosConfigurations with proper system rebuild attributes
    nixosConfigurations = {
      "ddeus-nix" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
      };
    };

    homeConfigurations = {
      "th" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [ ./home-manager/home.nix ];
        #user = "th";
        #homeDirectory = "/home/th";
        #configuration = ./home.nix;  # Specify the path to your home-manager configuration file
      };
    };
  };
}

