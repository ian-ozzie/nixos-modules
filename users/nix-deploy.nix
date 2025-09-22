{
  lib,
  ...
}: {
  nix.settings.trusted-users = [ "nix-deploy" ];

  security.sudo.extraRules = [{
    users = [ "nix-deploy" ];

    commands = [{
      command = "/run/current-system/sw/bin/env ^NIXOS_INSTALL_BOOTLOADER=0 systemd-run -E LOCALE_ARCHIVE -E NIXOS_INSTALL_BOOTLOADER --collect --no-ask-password --pipe --quiet --service-type=exec --unit=nixos-rebuild-switch-to-configuration /nix/store/[a-z0-9\.-]+/bin/switch-to-configuration [a-z]+$";
      options = [ "NOPASSWD" ];
    } {
      command = "/run/current-system/sw/bin/nix-env ^-p /nix/var/nix/profiles/system --set /nix/store/[a-z0-9\.-]+$";
      options = [ "NOPASSWD" ];
    }];
  }];

  users.users.nix-deploy = {
    isNormalUser = true;
    uid = lib.mkDefault 1788;
  };
}
