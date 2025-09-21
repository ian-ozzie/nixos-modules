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
      gitsigns.codeActions.enable = false; # throws an annoying debug message
      gitsigns.enable = true;
    };

    languages = {
      enableExtraDiagnostics = true;
      enableFormat = false;
      enableTreesitter = true;

      php.enable = true;
      tailwind.enable = true;
      ts.enable = true;

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
      inlayHints.enable = true;
      lightbulb.enable = false;
      lspSignature.enable = true;
      lspkind.enable = false;
      lspsaga.enable = false;
      nvim-docs-view.enable = false;
      otter-nvim.enable = false;

      trouble = {
        enable = true;

        setupOpts = {
          auto_close = true;
        };
      };
    };

    notes = {
      todo-comments.enable = true;
    };

    ui = {
      illuminate.enable = true;

      smartcolumn = {
        enable = true;
        setupOpts.colorcolumn = [ "80" "120" ];
      };
    };

    utility = {
      ccc.enable = true;
      yanky-nvim.enable = true;

      images.image-nvim = {
        enable = true;
        setupOpts.backend = "kitty";
      };

      nvim-biscuits = {
        enable = true;
        setupOpts.cursor_line_only = true;
      };
    };

    visuals = {
      highlight-undo.enable = true;
    };
  };
}
