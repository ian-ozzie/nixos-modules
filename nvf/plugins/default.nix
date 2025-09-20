{
  pkgs,
  ...
}: {
  imports = [
    ./bigfile.nix
    ./git.nix
    ./indentline.nix
    ./lastplace.nix
    ./motion.nix
    ./rainbow.nix
    ./spaceless.nix
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

      php.enable = true;
      ts.enable = true;
      tailwind.enable = true;

      nix = {
        enable = true;
        extraDiagnostics.enable = true;
        treesitter.enable = true;

        lsp = {
          package = pkgs.nixd;
          server = "nixd";
          options = {
            formatting.command = [ "nixfmt" ];
            nixpkgs.expr = "import <nixpkgs> { }";
          };
        };
      };
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
