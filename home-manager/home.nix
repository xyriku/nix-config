# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules hee
  imports = [
    ./fcitx5
    ./programs
    ./shell
    ./wm
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

  programs.zsh.enable = true;

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
syncthing
syncthingtray

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
lsof

# system tools
sysstat
lm_sensors
ethtool
pciutils
usbutils

# development
rust-analyzer
lua-language-server
vscode-json-languageserver
package-version-server

# games
steam
moonlight-qt


];

  programs.git = {
    enable = true;
    settings.user.name = "xyrik";
    settings.user.email = "xyrik@fubuk.ing";
  };


  programs.zsh.enable = true;
  programs.zsh = {
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /home/xyrik/Documents/nix-config/#nixos";
      update-home = "sudo home-manager switch --flake /home/xyrik/Documents/nix-config/#xyrik@nixos";
      ls = "eza --icons=always";
      fubu = "noglob mpv '--ytdl-format=bestvideo[height<=?1440]+bestaudio/best'";
      listports = "sudo ss -tulpn";
      addport="'f() { sudo firewall-cmd --permanent --zone=public --add-port=$1/$2};f'";
    };

   history.size = 10000;
   history.ignoreAllDups = true;
   history.path = "$HOME/.zsh_history";
   history.ignorePatterns = ["rm*" "pkill *" "cp *"];

   oh-my-zsh = {
     enable = true;
     plugins = [
       "git"
       "zoxide" "fzf" "flutter"

     ];
   };
  };
  # Shell aliases
  #programs.bash.enable = true;
  programs.bash.shellAliases = {
    update = "sudo nixos-rebuild switch --flake /home/xyrik/Documents/nix-config/#nixos";
    update-home = "sudo home-manager switch --flake /home/xyrik/Documents/nix-config/#xyrik";
  };


  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "26.05";
}
