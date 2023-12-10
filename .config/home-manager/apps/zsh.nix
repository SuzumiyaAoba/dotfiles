{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    history = {
      size = 100000;
      path = "$HOME/.zsh_history";
      save = 1000000;

      share = true;

      ignoreAllDups = true;
      ignoreSpace = true;

      extended = true;
    };

    historySubstringSearch = {
      enable = true;
    };

    enableAutosuggestions = true;

    syntaxHighlighting = {
      enable = true;
    };
    autocd = true;

    shellAliases = {
      # ls
      ls  = "exa --icons --git";
      l   = "clear && ls";
      ll  = "exa -aahl --icons --git";
      lt  = "exa -T -L 3 -a -I \".git\" --git-ignore --icons";
      lta ="exa -T -a -I \".git\" --git-ignore --color=always --icons | less -r";

      # grep
      grep = "rg";

      # cat
      cat = "bat";

      # history
      history = "history -i";

      # nix
      update-personal = "home-manager switch --flake $(ghq root)/github.com/SuzumiyaAoba/dotfiles/.config/home-manager#personal";

      # emacs
      emacs     = "emacsclient -nw -c -a ''";
      gemacs    = "emacsclient -c -a '' &";
      killemacs = "emacsclient -e '(kill-emacs)'";
      e         = "emacs";
      ge        = "gemacs";
    };

    initExtra = ''
      eval "$(starship init zsh)"

      export WORDCHARS="*?_-.[]~&;=!#$%^(){}<>"

      #
      # keybind
      #

      # history
      function select-history() {
        BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
        CURSOR=$#BUFFER
      }
      zle -N select-history
      bindkey '^r' select-history
    '';
  };
}
