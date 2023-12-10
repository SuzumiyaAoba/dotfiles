{ config, pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacsGit;
  };

  home.file = {
    "${config.home.username}/.config/emacs/init.el" = {
      source = ../../emacs/init.el;
      target = ".emacs.d/init.el";
    };

    "${config.home.username}/.config/emacs/early-init.el" = {
      source = ../../emacs/early-init.el;
      target = ".emacs.d/early-init.el";
    };
  };
}
