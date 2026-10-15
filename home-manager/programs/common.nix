{ config, pkgs, ... }:

{
  home.packages = with pkgs; [


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
    aha
    cifs-utils
    cliphist
    dmenu
    dotnet-sdk
    slurp
    tesseract
    wl-clipboard
    wev
    wget
    ydotool
    kdotool

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
    nixd

# languages
    perl
    python3
    typescript


# wine related
   (bottles.override { removeWarningPopup = true; })
    xwayland-satellite

# general applications
    discord
    vesktop
    kdePackages.dolphin
    gram
    virtualbox
    emacs

# noctalia
    greetd
    noctalia-greeter

# network
    openvpn
    samba
    tailscale

# terminal
    bitwarden-cli
    starship



  ];




}
