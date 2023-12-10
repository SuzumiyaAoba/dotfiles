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
    git
    curl
    wget
    bat
    eza
    ripgrep
    delta
    fd
    ghq
    tig
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

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
