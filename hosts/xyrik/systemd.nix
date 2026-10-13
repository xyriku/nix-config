{ pkgs, ...}:

{
systemd.services.makima = {
  description = "Makima remapping daemon";
  wantedBy = [ "default.target" ];
  serviceConfig = {
    Type = "simple";
    ExecStart = "${pkgs.makima}/bin/makima";
    Group = "input";
    User = "xyrik";
  };
  path = [ pkgs.curl pkgs.jq pkgs.bash ];
  environment = {
    MAKIMA_CONFIG="/home/xyrik/.config/makima";
  };
};

services.samba = {
        enable = true;
        securityType = "user";
        openFirewall = true;
        settings = {
            global = {
                workgroup = "WORKGROUP";
                "server string" = "smbnix";
                "netbios name" = "smbnix";
                "security" = "user";
                };

            };

    };

services.samba-wsdd = {
        enable = true;
        openFirewall = true;
    };

services.avahi = {
        enable = true;
        nssmdns4 = true;
        publish = {
            enable = true;
            userServices = true;
            };
    };

networking.firewall.enable = true;
networking.firewall.allowPing = true;

}
