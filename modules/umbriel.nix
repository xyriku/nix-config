{ pkgs, ...}:
{
  services.displayManager.defaultSession = "umbriel";
  programs.umbriel.enable = true;
}
