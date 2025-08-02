{
  imports = [
    ../options
    ./hardware.nix
    ./disk
    ./boot.nix
    ./nix
    ./configuration.nix
    ./kernel.nix
    ./swap.nix
    ./etc
    ./services
    ./location.nix
    ./network
    ./ntp.nix
    ./users.nix
    ./audio.nix
    ./security
    ./fonts.nix
    ./virtualisation
    ./gaming
    ./graphic
    ## ./server
  ];
}
