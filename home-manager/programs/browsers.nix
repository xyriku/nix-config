{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    firefox
  ];

# open-source upstream Chromium, base
programs.chromium.enable = true;

# Brave without cryptro/AI extra
programs.brave-origin.enable = true;



}
