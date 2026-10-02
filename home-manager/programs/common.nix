{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    aha
    archon-lite
    audacity
    bottles
    cifs-utils
    cliphist
    dmenu
    dotnet-sdk
    feh
    ffmpeg-full
    gpu-screen-recorder
    greetd
    imagemagick
    input-remapper
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
    starship
    swayimg
    tailscale
    tesseract
    tetrio-desktop
    typescript
    virtualbox
    webrtc-audio-processing
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
