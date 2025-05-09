return {
  "nvim-lualine/lualine.nvim",

  config = function()
    require("lualine").setup({
      options = {
        theme = "gruvbox_dark",
      },
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "neo-tree",
      callback = function()
        vim.opt_local.laststatus = 0 -- hide statusline in Neo-tree
      end,
    })

    vim.api.nvim_create_autocmd("BufLeave", {
      pattern = "*",
      callback = function()
        if vim.bo.filetype ~= "neo-tree" then
          vim.opt.laststatus = 2 -- restore statusline elsewhere
        end
      end,
    })
  end,
}
