{ inputs, pkgs, ... }:
{
    imports = [
    ./nix.nix
    ./fonts.nix
    ./overlays.nix
    ./programs.nix
    ./security.nix
    ./users.nix
    ];

    }
