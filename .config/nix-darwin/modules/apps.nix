{ pkgs, ...}: {

  environment.systemPackages = with pkgs; [
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
    };

    taps = [
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/services"
      "homebrew/cask-versions"
    ];

    brews = [
    ];

    casks = [
      "google-chrome"
      "firefox"
    ];
  };
}
