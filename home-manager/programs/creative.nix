{ pkgs, ... }:

{

  home.packages = with pkgs; [
    audacity
    krita
    reaper
    yabridge
    yabridgectl
    qpwgraph
  ];

  programs = {
  obs-studio = {
    enable = pkgs.stdenv.hostPlatform.isx86_64;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-gstreamer
      obs-pipewire-audio-capture
      obs-vaapi

    ];
  };
  };
}
