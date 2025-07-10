{ pkgs, ... }:

{
  programs.vivaldi.enable = true;

  # Set default browser via xdg
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/html" = [ "vivaldi-stable.desktop" ];
      "x-scheme-handler/http" = [ "vivaldi-stable.desktop" ];
      "x-scheme-handler/https" = [ "vivaldi-stable.desktop" ];
      "x-scheme-handler/ftp" = [ "vivaldi-stable.desktop" ];
      "application/xhtml+xml" = [ "vivaldi-stable.desktop" ];
    };
  };
}
