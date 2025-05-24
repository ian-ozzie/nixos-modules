
{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim.extraPlugins."nvim-lastplace" = {
    package = pkgs.vimPlugins.nvim-lastplace;
    setup = ''
      require("nvim-lastplace").setup({
        lastplace_open_folds = true
      });
    '';
  };
}
