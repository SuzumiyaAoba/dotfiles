{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    volta
  ];

  home.activation = {
    script = ''
      ${pkgs.volta}/bin/volta install node@20
    '';
  };
}
