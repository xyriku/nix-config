{ pkgs, inputs, ...}:

{
        programs.zellij = {
                enable = true;
                enableZshIntegration = true;
                attachExistingSession = true;
                themes = "catppuccin-mocha";
            };
}

