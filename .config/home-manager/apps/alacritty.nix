{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;

    settings = {
      window = {
        padding = {
          x = 8;
          y = 4;
        };

        dynamic_padding = true;
        option_as_alt = "OnlyLeft";

        opacity = 1.0;
      };

      font = {
        normal = {
          family = "HackGen Console NF";
          style = "Regular";
        };

        bold = {
          family = "HackGen Console NF";
          style = "Bold";
        };

        size = 16.0;

        offset = {
          y = 1;
        };
      };

      shell = {
        program = "/bin/zsh";
        args = [
          "-l"
          "-c"
          "source ~/.zshrc; tmux attach 2> /dev/null || tmux"
        ];
      };
    };
  };
}
