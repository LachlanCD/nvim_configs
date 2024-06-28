return {
  "folke/zen-mode.nvim",
  config = function()
    vim.keymap.set("n", "<leader>zz", function()
      require("zen-mode").setup {
        window = {
          width = 0.45,
          options = {
            relativenumber = false
          }
        },
        require("zen-mode").toggle()
      }
    end)


    vim.keymap.set("n", "<leader>zf", function()
      require("zen-mode").setup {
        window = {
          width = 0.35,
          options = {
            number = false,
            relativenumber = false,
            signcolumn = "no"
          }
        },
        require("zen-mode").toggle()
      }
    end)
  end
}
