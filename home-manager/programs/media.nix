{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    feh
    ffmpeg-full
    easyeffects
    imagemagick
    gpu-screen-recorder
    mpv
    mpvScripts.mpris
    pavucontrol
    pear-desktop
    playerctl
    swayimg
    slurp
    webrtc-audio-processing
    yt-dlp

  ];



}
