{ config, pkgs, ... }:

{
  home.packages = [ pkgs.tig ];

  home.file = {
    "${config.home.username}/.tigrc" = {
      source = ../../../.tigrc;
      target = ".tigrc";
    };
  };
}
