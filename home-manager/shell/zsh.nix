{ ... };
{

  programs.zsh.enable = true;
  programs.zsh = {
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /home/xyrik/Documents/nix-config/#nixos";
      update-home = "sudo home-manager switch --flake /home/xyrik/Documents/nix-config/#xyrik@nixos";
      ls = "eza --icons=always";
      fubu = "noglob mpv '--ytdl-format=bestvideo[height<=?1440]+bestaudio/best'";
      listports = "sudo ss -tulpn";
      addport="'f() { sudo firewall-cmd --permanent --zone=public --add-port=$1/$2};f'";
    };

   history.size = 10000;
   history.ignoreAllDups = true;
   history.path = "$HOME/.zsh_history";
   history.ignorePatterns = ["rm*" "pkill *" "cp *"];

   oh-my-zsh = {
     enable = true;
     plugins = [
       "git"
       "zoxide" "fzf" "flutter"

     ];
   };
  };
    }
