{
  pkgs,
  ...
}: {
  programs.nvf.settings.vim = {
    extraPlugins."git-messenger-vim" = {
      package = pkgs.vimPlugins.git-messenger-vim;
      setup = ''
        git_messenger_include_diff = true
      '';
    };

    globals = {
      git_messenger_include_diff = "current";
    };
  };
}
