{ pkgs, ... }:

{

    # Enable CUPS to print documents.
    services.printing.enable = true;
    services.power-profiles-daemon.enable = true;
    services.upower.enable = true;

    services.blueman.enable = true;

  # Automatic updating
    system.autoUpgrade.enable = true;
    system.autoUpgrade.dates = "weekly";


    services.samba = {
        enable = true;
        securityType = "user";
        openFirewall = true;
        settings = {
            global = {
                workgroup = "WORKGROUP";
                "server string" = "smbnix";
                "netbios name" = "smbnix";
                "security" = "user";
                };

            };

    };

    services.samba-wsdd = {
        enable = true;
        openFirewall = true;
    };

    fileSystems."/mnt/Media" = {
            device = "//192.168.1.22/Media";
            fsType = "cifs";
            options = let
            automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

            in ["${automount_opts},credentials=/etc/nixos/smb-secrets,uid=1000,gid=100"];
        };

     services.avahi = {
        enable = true;
        nssmdns4 = true;
        publish = {
            enable = true;
            userServices = true;
            };
    };

    # Allow makima to change hardware
    services.libinput.enable = true;
    services.udev.extraRules = ''
      SUBSYSTEM=="misc", KERNEL=="uinput", MODE="0660", GROUP="input", TAG+="uaccess"
    '';


    # Audio settings
    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;

    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        # If you want to use JACK applications, uncomment this
        jack.enable = true;
  };


  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable keyring for noctalia and noctalia-greeter
  services.displayManager.noctalia-greeter.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.greetd.enableGnomeKeyring = true;


  # Enable the KDE Plasma Desktop Environment.
  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    gwenview
    okular
    elisa
    kdepim-runtime
    kmahjongg
    kmines
    konversation
    kpat
    ksudoku
    ktorrent
  ];

}
