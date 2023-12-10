{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./git.nix
    ./starship.nix
    ./emacs.nix
    ./alacritty.nix
    ./wezterm.nix
    ./tig.nix

    ./volta.nix
  ];
}
