{
  imports = [
    ./bigfile.nix
    ./git.nix
    ./indentline.nix
    ./lastplace.nix
    ./motion.nix
    ./rainbow.nix
    ./statusline.nix
    ./surround.nix
    ./tabstop.nix
  ];

  programs.nvf.settings.vim = {
    binds = {
      whichKey.enable = true;
    };

    comments = {
      comment-nvim.enable = true;
    };

    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false; # throws an annoying debug message
    };

    languages = {
      enableFormat = false;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      php.enable = true;
      ts.enable = true;
      tailwind.enable = true;
    };

    lsp = {
      enable = true;

      formatOnSave = false;
      lspkind.enable = false;
      lightbulb.enable = false;
      lspsaga.enable = false;
      trouble.enable = true;
      lspSignature.enable = true;
      otter-nvim.enable = false;
      nvim-docs-view.enable = false;
    };

    notes = {
      todo-comments.enable = true;
    };

    ui = {
      smartcolumn = {
        enable = true;
        setupOpts.colorcolumn = [ "80" "120" ];
      };
    };

    utility = {
      ccc.enable = true;
    };
  };
}
