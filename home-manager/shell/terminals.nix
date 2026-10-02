{ pkgs, ... }:


let
  font = "JetBrainsMono Nerd Font";
in
{
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = 0.95;
      background_blur = 5;
    };

    font = {
      name = font;
      size = 12;
    };

    shellIntegration = {
      enableZshIntegration = true;
    };

  };
}
