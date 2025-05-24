{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim.extraPlugins."rainbow-delimiters-nvim" = {
    package = pkgs.vimPlugins.rainbow-delimiters-nvim;
    setup = ''
      require('lualine').setup({
      })
    '';
  };
}
