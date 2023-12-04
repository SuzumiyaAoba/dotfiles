{
  description = "Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, ... }: {
      environment.systemPackages =
        [
        ];

      services.nix-daemon.enable = true;
      # nix.package = pkgs.nix;

      nix.settings.experimental-features = "nix-command flakes";

      programs.zsh.enable = true;  # default shell on catalina

      system.configurationRevision = self.rev or self.dirtyRev or null;

      nixpkgs.hostPlatform = "aarch64-darwin";

      system.stateVersion = 4;
    };
  in
  {
    darwinConfigurations = {
      personal = nix-darwin.lib.darwinSystem {
        modules = [
          configuration
          ./modules/apps.nix
        ];
      };

      darwinPackages = self.darwinConfigurations.personal.pkgs;
    };
  };
}
