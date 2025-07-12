{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "dylan";
  home.homeDirectory = "/home/dylan";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  imports =
    (if builtins.match ".*-linux" (builtins.currentSystem or "") != null then [ ./dconf.nix ] else [ ])
    ++ [
      ./packages.nix
      ./nvim.nix
      ./fish.nix
      ./kitty.nix
      ./vivaldi.nix
      ./aliases.nix
    ];

  home.sessionVariables = {
    PAGER = "less";
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERMINAL = "kitty";
    PATH = "$HOME/.nix-profile/bin:$PATH";
  };

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
