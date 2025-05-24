{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim.extraPlugins."bigfile-nvim" = {
    package = pkgs.vimPlugins.bigfile-nvim;
    setup = ''
      require('bigfile').setup({
        filesize = 5, -- size of the file in MiB
      })
    '';
  };
}
