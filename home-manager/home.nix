# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

#  nixpkgs = {
#    # You can add overlays here
#    overlays = [
#      # If you want to use overlays exported from other flakes:
#      # neovim-nightly-overlay.overlays.default
#
#      # Or define it inline, for example:
#      # (final: prev: {
#      #   hi = final.hello.overrideAttrs (oldAttrs: {
#      #     patches = [ ./change-hello-to-hi.patch ];
#      #   });
#      # })
#    ];
#    # Configure your nixpkgs instance
#    config = {
#      # Disable if you don't want unfree packages
#      allowUnfree = true;
#    };
#  };

  # TODO: Set your username
  home = {
    username = "xyrik";
    homeDirectory = "/home/xyrik";
  };

  # Add stuff for your user as you see fit:
  programs.neovim.enable = true;

  # Enable home-manager and git
  programs.home-manager.enable = true;

home.packages = with pkgs; [

# some terminal stuff
fastfetch
yazi
btop

# archives
zip
xz
unzip
p7zip

# utils
ripgrep
jq
yq-go
eza
fzf

# misc
file
which
tree
gnused
gnutar
gawk
zstd
gnupg


# nix related
# provdes command 'nom', works like nix but with more log output
nix-output-monitor

# productivity
glow # markdown previwer in terminal
hugo # static site generator

btop
iotop
iftop

# system call montioring
strace
ltrace
lsof

# system tools
sysstat
lm_sensors
ethtool
pciutils
usbutils

# games
steam
moonlight-qt


];

  programs.git = {
    enable = true;
    settings.user.name = "xyrik";
    settings.user.email = "xyrik@fubuk.ing";
  };

  # Shell aliases
  programs.bash.enable = true;
  programs.bash.shellAliases = {
    rebuild = "sudo nixos-rebuild switch --flake /home/xyrik/Documents/nix-config/#nixos";
    apply-home = "sudo home-manager switch --flake /home/xyrik/Documents/nix-config/#xyrik@nixos";
  };


  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "26.05";
}
