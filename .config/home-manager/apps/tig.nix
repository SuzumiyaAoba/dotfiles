{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    tig
  ];

  home.file = {
    "${config.home.username}/.tigrc" = {
      source = ../../../.tigrc;
      target = ".tigrc";
    };
  };
}
