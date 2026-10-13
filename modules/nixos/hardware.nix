{ inputs, pkgs, ... }:
{
  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  # Enable uinput for tablet
  hardware.uinput.enable = true;
  boot.kernelModules = [ "uinput" ];

  hardware.opentabletdriver.enable = true;

    }
