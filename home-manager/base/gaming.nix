{ pkgs, config, inputs, ... }:
{
  imports = [
  ];


#config = {

    home.packages = with pkgs; [
      inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.pipewireLowLatency
      protonup-qt # GUI for installing custom Proton versions like GE_Proton
      gamescope
      mangohud
      protonplus
      winetricks
      umu-launcher

      prismlauncher
      osu-lazer-bin
      rusty-path-of-building
      tetrio-desktop
      xivlauncher
      archon-lite
      moonlight-qt
    ];

    services.pipewire.lowLatency.enable = true;
    programs.steam.platformOptimizations.enable = true;


#};
}
