{ lib, inputs, pkgs, config, ... }:
{
    imports = [
    inputs.nix-gaming.nixosModules.pipewireLowLatency
    inputs.nix-gaming.nixosModules.platformOptimizations
    ];
    programs.steam = {
      enable = true; # install steam
      package = pkgs.steam;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server

     gamescopeSession.enable = true;

      protontricks.enable = true;
      extest.enable = true;
    };
    
    services.pipewire.lowLatency.enable = true;
    programs.steam.platformOptimizations.enable = true;
}
