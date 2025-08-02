{ pkgs, ... }:{
  boot = {
    kernelPackages = pkgs.linuxKernel.packages.linux_zen;
    kernel.sysctl."net.ipv4.ip_forward" = 1;
  };
}
