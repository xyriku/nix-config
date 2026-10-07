{ pkgs, config, inputs, ... }:
{
  imports = [
  ];

  options = {
  };

config = {

    programs.steam = {
      enable = true; # install steam
      package = pkgs.steam;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server

     gamescopeSession.enable = true;

      protontricks.enable = true;
      extest.enable = true;
    };

    home.packages = with pkgs; [
      inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.pipewireLowLatency
      protonup-qt # GUI for installing custom Proton versions like GE_Proton
      gamescope
      mangohud
      protonplus
      winetricks
      umu-launcher
    ];

    services.pipewire.lowLatency.enable = true;
    programs.steam.platformOptimizations.enable = true;


};
}
