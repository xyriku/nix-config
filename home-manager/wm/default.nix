{ inputs, pkgs, ... }:

{
  imports = [
    ./noctalia.nix
  ];

  environment.systemPackages = [
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];




}
