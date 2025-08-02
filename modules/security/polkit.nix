{ pkgs, ... }:{

  # environment.etc."polkit-kde-authentication-agent-1".source = "${pkgs.libsForQt5.polkit-kde-agent}/libexec/polkit-kde-authentication-agent-1";
  # environment.systemPackages = with pkgs; [ libsForQt5.polkit-kde-agent ];

  security.polkit = {
    enable  = true;
    package = pkgs.polkit;
    adminIdentities = [
      "unix-group:wheel"
    ];

    extraConfig = ''
      polkit.addRule(function(action, subject) {
        if (
          subject.isInGroup("users")
            && (
              action.id == "org.freedesktop.login1.reboot" ||
              action.id == "org.freedesktop.login1.reboot-multiple-sessions" ||
              action.id == "org.freedesktop.login1.power-off" ||
              action.id == "org.freedesktop.login1.power-off-multiple-sessions"
            )
          )
        {
          return polkit.Result.YES;
        }
      });
    '';
  };
}
