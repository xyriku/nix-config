{ pkgs , ...}:

{
  programs = {
    gram = {
  enable = true;
  settings = {
    buffer_font_family = "Iosevka Nerd Font";
    buffer_font_size = 18;
    buffer_font_weight = 500;
    theme = "Catppuccin Mocha";
    vim_mode = true;
  };
    };
  };
}

# https://nix-community.github.io/home-manager/options/home-manager/programs/gram.html#
