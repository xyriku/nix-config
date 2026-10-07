{ pkgs, ... }:


{
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = 0.95;
      include = "~/.config/kitty/themes/noctalia.conf";
      background_blur = 5;
      shell = "zsh";
    };

    font = {
      name = "IosevkaTerm Nerd Font";
      size = 14;
    };

    shellIntegration = {
      enableZshIntegration = true;
    };


  };

  programs.zoxide.enable = true;
  programs.zoxide.enableZshIntegration = true;

}
