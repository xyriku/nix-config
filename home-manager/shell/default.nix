{ config, pkgs, ... }:

{
  imports = [
    ./terminals.nix
  ];

  home.packages = with pkgs; [

  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

  };

}
