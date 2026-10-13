{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    aha
   (bottles.override { removeWarningPopup = true; })
    cifs-utils
    cliphist
    dmenu
    dotnet-sdk
    equibop
    kdePackages.dolphin
    discord
    gram
    greetd
    noctalia-greeter
    openvpn
    perl
    python3
    qpwgraph
    samba
    slurp
    starship
    tailscale
    tesseract
    typescript
    virtualbox
    wev
    wl-clipboard
    wget
    xwayland-satellite
    ydotool
    kdotool
    bitwarden-cli
    vesktop



  ];




}
