{ config, pkgs, ... }:

{
  imports = [
    ./terminals.nix
    ./starship.nix
  ];

  home.packages = with pkgs; [

  ];

}
