{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim.extraPlugins."vim-sleuth" = {
    package = pkgs.vimPlugins.vim-sleuth;
  };
}
