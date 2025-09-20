{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim.extraPlugins."indentmini.nvim" = {
    package = pkgs.vimUtils.buildVimPlugin {
      pname = "indentmini.nvim";
      version = "v0.0.1";
      src = pkgs.fetchFromGitHub {
        owner = "nvimdev";
        repo = "indentmini.nvim";
        rev = "0dc4bc2b3fc763420793e748b672292bc43ee722";
        hash = "sha256-iMQn9eJuwThatTg9aTKhgHQaBc1NV4h/6gGt+fhZG9k=";
      };
    };

    setup = ''
      require("indentmini").setup({
        exclude = { 'markdown' },
        only_current = false,
      })

      vim.cmd.highlight('IndentLine guifg=#11111b')
      vim.cmd.highlight('IndentLineCurrent guifg=#CBA6F7')
    '';
  };
}
