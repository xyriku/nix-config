{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    aha
    archon-lite
    audacity
   (bottles.override { removeWarningPopup = true; })
    cifs-utils
    cliphist
    dmenu
    dotnet-sdk
    equibop
    feh
    ffmpeg-full
    gpu-screen-recorder
    kdePackages.dolphin
    greetd
    imagemagick
    mpv
    mpvScripts.mpris
    noctalia-greeter
    opentabletdriver
    openvpn
    osu-lazer-bin
    pavucontrol
    rusty-path-of-building
    perl
    playerctl
    prismlauncher
    python3
    qpwgraph
    reaper
    samba
    slurp
    starship
    swayimg
    tailscale
    tesseract
    tetrio-desktop
    typescript
    virtualbox
    webrtc-audio-processing
    wev
    wl-clipboard
    wget
    xivlauncher
    xwayland-satellite
    yabridge
    yabridgectl
    yt-dlp
    ydotool
    kdotool



  ];




}
