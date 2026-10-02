{ pkgs , ...};
{
  programs = {
    gram = {
  enable = true;
  settings = {
    buffer_font_family = "Iosevka Nerd Font";
    buffer_font_size = 18;
    buffer_font_weight = 400;
  };
    };
  };
}

# https://nix-community.github.io/home-manager/options/home-manager/programs/gram.html#
