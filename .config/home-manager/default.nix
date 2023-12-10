{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = (pkg: true);

  imports = [
    ./apps
  ];

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # fonts
    hackgen-nf-font

    # commands
    curl
    wget
    bat
    eza
    ripgrep
    delta
    fd
    ghq
    fzf
    jq
    bottom
    xsv
    csview

    cargo

    volta

    # GUIs
    kitty
    raycast
    rectangle
    vscode
  ];

  home.sessionVariables = {
    EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
