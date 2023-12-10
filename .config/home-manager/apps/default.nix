{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./starship.nix
    ./emacs.nix
    ./alacritty.nix
    ./wezterm.nix
  ];
}
