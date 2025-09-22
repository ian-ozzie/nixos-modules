{
  lib,
  pkgs,
  ...
}: {
  users.users.ozzie = {
    initialHashedPassword = lib.mkDefault "$y$j9T$tT9g2/LIzEbJSZjcF/p0q.$lGNfNgndPk216BAoarpStQjy87r3o9UIGr7yKd/iwR7"; # fresh-SYSTEM-password-1789
    isNormalUser = true;
    shell = pkgs.bash;
    uid = lib.mkDefault 1789;

    openssh.authorizedKeys.keys = [
      "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIHAvNhEwvqPZ+k5M3lCUXtw2Qpz8+fSaam1JoWwWDd/MAAAABHNzaDo="
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAa4s0F5Y84QIl4awca5O54sNZXPOaXRFhiuYLfUJ1f3"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDOedK/iBJQbrnt28ar65nxcCDc94DFStXVLU6Ph7GNI"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHj2clFHRheJ4zDWUwWXaow9OFAHtHBaDjdFpXVwuXDR"
    ];
  };
}
