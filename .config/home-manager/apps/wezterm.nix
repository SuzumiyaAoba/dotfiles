{ config, pkgs, ... }:

{
  programs.wezterm = {
    enable = true;

    enableZshIntegration = true;

    extraConfig = ''
      local config = require 'config'

      return config
    '';
  };

  home.file = {
    "${config.home.username}/.config/wezterm/config.lua" = {
      source = ../../wezterm/config.lua;
      target = ".config/wezterm/config.lua";
    };

    "${config.home.username}/.config/wezterm/keybinds.lua" = {
      source = ../../wezterm/keybinds.lua;
      target = ".config/wezterm/keybinds.lua";
    };
  };
}
