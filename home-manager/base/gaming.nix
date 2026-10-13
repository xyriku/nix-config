{ pkgs, config, inputs, ... }:
{
  imports = [
  ];

    home.packages = with pkgs; [
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

}
