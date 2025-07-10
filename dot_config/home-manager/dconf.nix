# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/control-center" = {
      last-panel = "mouse";
      window-state = mkTuple [ 980 640 true ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///usr/share/backgrounds/gnome/adwaita-l.webp";
      picture-uri-dark = "file:///usr/share/backgrounds/gnome/adwaita-d.webp";
      primary-color = "#3071AE";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/input-sources" = {
      current = mkUint32 0;
      sources = [ (mkTuple [ "xkb" "fr+latin9" ]) ];
      xkb-options = [];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-software" "spotify" "vivaldi-stable" ];
      show-banners = true;
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/notifications/application/spotify" = {
      application-id = "spotify.desktop";
    };

    "org/gnome/desktop/notifications/application/vivaldi-stable" = {
      application-id = "vivaldi-stable.desktop";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      natural-scroll = false;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      report-technical-problems = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///usr/share/backgrounds/gnome/adwaita-l.webp";
      primary-color = "#3071AE";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 0;
    };

    "org/gnome/desktop/wm/keybindings" = {
      activate-window-menu = [];
      panel-run-dialog = [ "<Alt>space" ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-last-coordinates = mkTuple [ 45.746001439884814 4.83566 ];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
      help = [];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Control><Alt>t";
      command = "nixGL kitty";
      name = "Kitty";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
      sleep-inactive-ac-timeout = 3600;
    };

    "org/gnome/shell" = {
      command-history = [ "echo toto" "/home/dylan/.nix-profile/bin/nixGL kitty" ".nix-profile/bin/spotidy" ".nix-profile/bin/spotify" ".nix-profile/bin/vivaldi" "discord" "kitty" "nixGL kitty" "settings" "setting" "spotify" "vivaldi" ];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "43.9";
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1751401019;
      first-run = false;
      install-timestamp = mkInt64 1751400914;
      update-notification-timestamp = mkInt64 1751400961;
    };

    "org/gnome/system/location" = {
      enabled = true;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-size = mkTuple [ 859 374 ];
    };

  };
}
