{ pkgs, inputs, ...}:

{
        programs.zellij = {
                enable = true;
                enableZshIntegration = true;
                attachExistingSession = true;
                #settings = {
                        #theme_dir = "/home/xyrik/zellij/#themes";
                #    };
                #themes = "catppuccin-mocha";
            };
}

