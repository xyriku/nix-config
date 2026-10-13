{ inputs, pkgs, ... }:

{
    imports = [
   # ./packages.nix
   ./hardware.nix
   ./network.nix
    ./system.nix
    ];

}
