--return {
--  "shaunsingh/nord.nvim",
--  lazy = false,
--  name = "nord",
--  priority = 1000,
--  opts = {
--    nord_contrast = true
--  },
--  config = function()
--    vim.cmd.colorscheme("nord")
--  end,
--}

--return {
--  "catppuccin/nvim",
--  lazy = false,
--  name = "catppuccin",
--  priority = 1000,
--  opts = {
--    transparent_background = true,
--  },
--  config = function()
--    vim.cmd.colorscheme("catppuccin")
--  end,
--}

return {
  "rose-pine/neovim",
  lazy = false,
  name = "rose-pine",
  priority = 1000,
  opts = {
    transparent_background = true,
  },
  config = function()
    vim.cmd.colorscheme("rose-pine")
  end,
}
