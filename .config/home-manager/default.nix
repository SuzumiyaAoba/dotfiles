{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = (pkg: true);

  home.packages = with pkgs; [
    zsh
    starship

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

  programs.emacs.enable = true;
  programs.emacs.package = pkgs.emacsGit;
}
