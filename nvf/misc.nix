{
  programs.nvf.settings.vim.luaConfigRC.misc = ''
    -- Dynamic true/relative line numbers
    vim.opt.number = true
    vim.opt.relativenumber = true

    vim.api.nvim_create_autocmd('InsertEnter', { command = [[set norelativenumber]] })
    vim.api.nvim_create_autocmd('InsertLeave', { command = [[set relativenumber]] })
  '';
}
