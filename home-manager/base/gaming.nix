{ pkgs, config, ... }:
{
  imports = [
  ];

  options = {
  };

  config = {
    programs.gamemode.enable = true; # for performance mode

    programs.steam = {
      enable = true; # install steam
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server

     gamescopeSession.enable = true;

      protontricks.enable = true;
      extest.enable = true;
    };

    home.packages = with pkgs; [
      protonup-qt # GUI for installing custom Proton versions like GE_Proton
      gamescope
      mangohud
      protonplus
      winetricks
      umu-launcher
    ];

    services.pipewire.lowLatency.enable = true;
    programs.steam.platformOptimizations.enable = true;

    programs.gamemode.enable = true;
  };


}
