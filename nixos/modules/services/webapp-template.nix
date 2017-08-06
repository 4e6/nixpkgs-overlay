{ config, lib, pkgs, ... }:

with lib;
let
  cfg = config.services.webapp-template;
in {

  options.services.webapp-template = {
    enable = mkOption {
      type = types.bool;
      default = false;
      description = "webapp-template service";
    };
  };

  config = mkIf cfg.enable {
    systemd.services.webapp-template = {
      description = "webapp-template server";

      wantedBy = [ "multi-user.target" ];
      after = [ "network.target" ];

      path = [ pkgs.webapp-template-hs ];

      script = "${pkgs.webapp-template-hs}/bin/webapp";

      serviceConfig = {
        KillMode = "process";
      };
    };
  };
}
