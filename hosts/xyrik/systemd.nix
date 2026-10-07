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

}
