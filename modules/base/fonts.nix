{ inputs, pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emojki
    liberation_ttf
    nerd-fonts.fira-code
    nerd-fonts.iosevka
    nerd-fonts.iosevkaterm
  ];
}
