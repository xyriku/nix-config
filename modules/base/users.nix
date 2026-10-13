{ inputs, pkgs, ... }:
{


  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."xyrik" = {
    isNormalUser = true;
    description = "xyrik";
    shell = pkgs.zsh;
    extraGroups = [ "input" "uinput" "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    #  thunderbird
    ];
  };

  users.defaultUserShell = pkgs.zsh;

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.waylandFrontend = true;
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };

    }
