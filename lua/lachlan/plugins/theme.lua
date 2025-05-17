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
