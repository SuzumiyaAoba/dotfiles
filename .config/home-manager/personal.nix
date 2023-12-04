{ config, pkgs, ... }:

{
  imports = [ ./default.nix ];

  home.username = "aoba";
  home.homeDirectory = "/Users/aoba";
}
