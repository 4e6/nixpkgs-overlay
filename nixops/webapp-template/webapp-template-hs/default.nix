{
  network.description = "Web server";

  webserver =
    { config, lib, pkgs, ... }:
    { # apply nixpkgs overlay
      nixpkgs.config.packageOverrides = import ../../../nixpkgs-overlay.nix pkgs;
      # import nixos modules
      imports = [ ../../../nixos/modules/services/webapp-template.nix ];

      networking.firewall.enable = false;
      services.webapp-template.enable = true;
    };
}
