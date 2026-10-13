{ inputs, pkgs, ... }:
{

  # Enable Flakes and accompanying CLI tool
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Automatic cleanup
  nix.gc.automatic = true;
  nix.gc.dates = "daily";
  nix.gc.options = "--delete-older-than 10d";
  nix.settings.auto-optimise-store = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

    }
