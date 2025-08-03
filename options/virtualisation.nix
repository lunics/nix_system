{ config, lib, ... }: with lib; {
  options._ = {
    virtualisation = mkEnableOption "";

    waydroid = mkOption {
      type    = types.bool;
      default = config._.virtualisation;
    };

    docker = mkOption {
      type    = types.bool;
      default = false;
    };

    podman = mkOption {
      type    = types.bool;
      default = false;
    };
  };
}

