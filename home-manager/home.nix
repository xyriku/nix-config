{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./programs
    ./shell
    ./wm
    ./base
  ];


  home = {
    username = "xyrik";
    homeDirectory = "/home/xyrik";
  };


  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Shell aliases
  #programs.bash.enable = true;
  programs.bash.shellAliases = {
    update = "sudo nixos-rebuild switch --flake /home/xyrik/Documents/nix-config/#nixos";
    update-home = "sudo home-manager switch --flake /home/xyrik/Documents/nix-config/#xyrik";
  };



  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "26.05";
}
