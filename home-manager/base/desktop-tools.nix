{ lib, pkgs, ...}:
{
  # wayland related
  home.sessionVariables = {
    "NIXOS_OZONE_WL" = "1"; # for any ozone-based browser & electron apps to run on wayland
    "MOZ_ENABLE_WAYLAND" = "1"; # for firefox to run on wayland
    "MOZ_WEBRENDER" = "1";
    # enable native wayland support for most electron apps
    "ELECTRON_OZONE_PLATFORM_HINT" = "auto";
    # misc
    "SDL_VIDEODRIVER" = "wayland";
    "GDK_BACKEND" = "wayland";
    "XDG_SESSION_TYPE" = "wayland";
  };

  home.packages = with pkgs; [
    wl-clipboard # copy and paste
    brightnessctl
    # screen recording
    wf-recorder

  ];

  # auto mount usb drives
  services = {
    udiskie.enable = true;
  };
}
