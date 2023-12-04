{ pkgs, ... }: {

  imports = [
    ./apps.nix
  ];

  homebrew.casks = [
    "brave-browser"
  ];
}
