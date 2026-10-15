{ inputs, pkgs, ...}:
{
  programs.gpu-screen-recorder.enable = true;
  programs.zsh.enable = true;
  programs.hyprland.enable = true;
 # programs.steam.enable = true;
  programs.gamemode.enable = true; # for performance mode
  programs.firefox.enable = true;
  programs.umbriel.enable = true;

  environment.systemPackages = with pkgs; [
    git
    git-lfs
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    gram
    wget
    home-manager
    ddrescue
    testdisk
    logitech-udev-rules
    libinput
    kara
    pipx
    nix-prefetch
    nix-prefetch-github
    linuxHeaders
    evtest
    makima
    (pkgs.callPackage ../nixos/packages.nix { })
    coreutils
    fd
    clang
];
}
