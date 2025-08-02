{
  networking.extraHosts = ''
    192.168.1.35    machine-A
    192.168.1.63    machine-B
  '';

  # alternative
  networking.hosts = {
    # "192.168.1.35" = [ "machine-A" ];
    # "192.168.1.63" = [ "machine-B" ];
  };
}
