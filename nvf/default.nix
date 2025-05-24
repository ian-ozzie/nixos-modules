{
  nvf,
  lib,
  ...
}: {
  imports = [
    ./keymap.nix
    ./misc.nix
    ./options.nix

    ./plugins
  ];

  programs.nvf = {
    enable = true;
    enableManpages = true;

    settings.vim = {
      viAlias = true;
      vimAlias = true;

      clipboard = {
        providers.wl-copy.enable = true;
      };

      theme = {
        enable = true;
        name = lib.mkForce "catppuccin";
        style = lib.mkForce "mocha";
        transparent = lib.mkForce false;
      };
    };
  };
}
