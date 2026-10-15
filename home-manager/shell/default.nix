{ config, pkgs, ... }:

{
  imports = [
    ./terminals.nix
    ./starship.nix
    ./zsh.nix
    ./zellij.nix
  ];

  home.packages = with pkgs; [

  ];

}
