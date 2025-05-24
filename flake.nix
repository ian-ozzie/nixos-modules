{
  description = "Ozzie's NixOS modules";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    nvf,
    ...
  }: {
    nixModules = {
      nvf = nvf.nixosModules.default;
      nvfConfig = import ./nvf;
    };
  };
}
