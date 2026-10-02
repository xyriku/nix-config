{ pkgs, ... }:


{
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = 0.95;
      background_blur = 5;
    };

    font = {
      name = "IosevkaTerm Nerd Font";
      size = 12;
    };

    shellIntegration = {
      enableZshIntegration = true;
    };

  };
}
