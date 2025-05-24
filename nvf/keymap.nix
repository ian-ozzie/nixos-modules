{
  programs.nvf.settings.vim.keymaps = [{
    key = "<Esc>";
    mode = ["n"];
    action = "<cmd>nohlsearch<CR>";
    desc = "Clear highlight from search";
  } {
    key = "<Esc><Esc>";
    mode = ["t"];
    action = "<C-\\><C-n>";
    desc = "Exit terminal mode";
  } {
    key = "<C-h>";
    mode = ["n"];
    action = "<C-w><C-h>";
    desc = "Move focus to the left window";
  } {
    key = "<C-j>";
    mode = ["n"];
    action = "<C-w><C-j>";
    desc = "Move focus to the lower window";
  } {
    key = "<C-k>";
    mode = ["n"];
    action = "<C-w><C-k>";
    desc = "Move focus to the upper window";
  } {
    key = "<C-l>";
    mode = ["n"];
    action = "<C-w><C-l>";
    desc = "Move focus to the right window";
  } {
    key = "<C-h>";
    mode = ["i"];
    action = "<Left>";
    desc = "Move left in insert mode";
  } {
    key = "<C-j>";
    mode = ["i"];
    action = "<Down>";
    desc = "Move down in insert mode";
  } {
    key = "<C-k>";
    mode = ["i"];
    action = "<Up>";
    desc = "Move up in insert mode";
  } {
    key = "<C-l>";
    mode = ["i"];
    action = "<Right>";
    desc = "Move right in insert mode";
  } {
    key = ">";
    mode = ["v"];
    action = ">gv";
    desc = "Increase indent and keep selection";
  } {
    key = "<";
    mode = ["v"];
    action = "<gv";
    desc = "Increase indent and keep selection";
  }];
}
