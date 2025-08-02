{ pkgs, ... }:{
  networking.firewall.allowedUDPPorts = [ ADD PORT ];

  # TODO: https://alberand.com/nixos-wireguard-vpn.html
  # networking.wireguard.interfaces = let
  #   server_ip = "ADD_IP";         # [Peer] section -> Endpoint
  # in {
  #   wg0 = {
  #     ips = [ "ADD_IP/24" ];
  #     listenPort = ADD_PORT;
  #     privateKeyFile = "path to private key file";
  #     peers = [{
  #       publicKey = "{server public key}";  # Public key of the server (not a file path).
  #       allowedIPs = [ "0.0.0.0/0" ];       # Forward all the traffic via VPN.
  #       #allowedIPs = [ "ADD_IP" "ADD_IP/22" ]; # Or forward only particular subnets
  #       endpoint = "{server ip}:ADD_PORT";     # Set this to the server IP and port.
  #                                           # ToDo: route to endpoint not automatically configured https://wiki.archlinux.org/index.php/WireGuard#Loop_routing https://discourse.nixos.org/t/solved-minimal-firewall-setup-for-wireguard-client/7577
  #       persistentKeepalive = 25;           # Send keepalives every 25 seconds. Important to keep NAT tables alive
  #     }];
  #   };
  # };
}
