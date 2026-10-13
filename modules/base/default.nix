{ inputs, pkgs, ... }:
{
    imports = [
    ./nix.nix
    ./fonts.nix
    ./gaming.nix
    ./overlays.nix
    ./programs.nix
    ./security.nix
    ./users.nix
    ];

    }
