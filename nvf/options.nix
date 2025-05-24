{
  programs.nvf.settings.vim.options = {
    # Disable modeline, visible with statusline
    showmode = false;

    # Indent settings
    tabstop = 2;
    shiftwidth = 2;
    smarttab = true;
    softtabstop = 2;
    expandtab = true;
    autoindent = true;
    breakindent = true;
    wrap = false;

    # Fold settings
    foldenable = true;
    foldlevelstart = 1;
    foldcolumn = "2";
    foldminlines = 3;
    foldmethod = "indent";

    # Undo settings
    undofile = true;
    undolevels = 1000;
    undoreload = 10000;

    # Keep command history
    history = 10000;

    # Case-insensitive searching UNLESS \C or one or more capital letters in the search term
    ignorecase = true;
    smartcase = true;

    # Keep signcolumn on by default
    signcolumn = "yes";

    # Highlight hidden characters
    listchars = ''tab:󰌒 ,trail:·,nbsp:␣,extends:›'';

    # Decrease update time
    updatetime = 250;

    # Decrease mapped sequence wait time
    timeoutlen = 300;

    # Configure how new splits should be opened
    splitright = true;
    splitbelow = true;

    # Sets how neovim will display certain whitespace characters in the editor.
    list = true;

    # Preview substitutions live, as you type!
    inccommand = "split";

    # Show which line your cursor is on
    cursorline = true;

    # Minimal number of screen lines to keep above and below the cursor.
    scrolloff = 10;

    # When inserting a bracket, briefly jump to its match
    showmatch = true;

    # Tab complete behaviour
    wildmenu = true;
    wildmode = "list:longest,full";

    # Disable mouse support
    mouse = "";

    # Allow cursor to move beyond the last character on a line
    virtualedit = "onemore";
  };
}
