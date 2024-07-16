return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,

        -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,

        -- JavaScript + TypeScript
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint_d"),
        require("none-ls.code_actions.eslint_d"),

        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.goimports_reviser,
      },
    })

    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}
