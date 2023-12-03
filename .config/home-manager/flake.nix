{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    emacs-overlay.url = "github:nix-community/emacs-overlay";
  };

  outputs = { nixpkgs, home-manager, emacs-overlay, ... }:
    let
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations.personal = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ({ config, pkgs, ... }: { nixpkgs.overlays = [ emacs-overlay.overlays.emacs ]; })
          ./home.nix
        ];
      };
    };
}
