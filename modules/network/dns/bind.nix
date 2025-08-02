{ config, lib, ... }:{
  config = lib.mkIf config._.dns_server {
    services.bind = {
      enable           = true;
      directory        = "/run/named";       # working directory of BIND
      extraConfig      = "";
      extraOptions     = "";
      # configFile     = ./custom_file;   # overridable config
      forward          = "first";    # first, only
      # forwarders     = config.networking.nameservers;
      # package        = pkgs.bind;
      blockedNetworks  = [];
      cacheNetworks    = [
        "127.0.0.0/24"
        "::1/128"
      ];
      listenOnPort     = 53;
      listenOnIpv6Port = 53;
      ipv4Only         = false;
      listenOn = [
        "any"
      ];
      listenOnIpv6 = [
        "any"
      ];

      zones = {
        name-zone = {
          name        = "name-zone";
          master      = true;         # false = slave server
          # masters = ?
          file        = "/etc/bind/zones/name-zone.db";
          extraConfig = "";
          allowQuery  = [
            "any"
          ];
          slaves = [];
        };
      };
    };
  };
}
