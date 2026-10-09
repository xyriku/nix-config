{ pkgs, inputs, ...}:

{
        programs.zellij = {
                enable = true;
                enableZshIntegration = true;
                attachExistingSession = true;
                settings = {
                        theme_dir = "${config.xdg.configHome}/zellij/themes";
                    };
                themes = "catppuccin-mocha";
            };
}

