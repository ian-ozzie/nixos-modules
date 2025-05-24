{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim.extraPlugins."leap-nvim" = {
    package = pkgs.vimPlugins.leap-nvim;
    setup = ''
      require("leap").create_default_mappings()
    '';
  };
}
