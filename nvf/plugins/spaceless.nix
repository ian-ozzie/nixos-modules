{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim.extraPlugins."spaceless.nvim" = {
    package = pkgs.vimUtils.buildVimPlugin {
      pname = "spaceless.nvim";
      version = "v0.0.1";
      src = pkgs.fetchFromGitHub {
        owner = "lewis6991";
        repo = "spaceless.nvim";
        rev = "927fb0afb416ea39306af5842c247d810dfd5938";
        hash = "sha256-t9wZ6ZYS42BDkJ2wcphcgqLobThyiCfGwhBVTdX7iGQ=";
      };
    };

    setup = ''
      require("spaceless").setup()
    '';
  };
}
