{ config, pkgs, ... }:

{

  programs.git = {
    enable = true;
    settings.user.name = "xyrik";
    settings.user.email = "xyrik@fubuk.ing";
  };





}
