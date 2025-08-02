{
  services.chrony = {
    enable            = true;
    enableNTS         = true;
    enableRTCTrimming = true;
    servers = [
      "0.nixos.pool.ntp.org"
      "1.nixos.pool.ntp.org"
      "2.nixos.pool.ntp.org"
      "3.nixos.pool.ntp.org"
    ];
    # extraConfig = '';
  };
}
