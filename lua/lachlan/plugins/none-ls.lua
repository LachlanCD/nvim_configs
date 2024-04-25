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
        -- null_ls.builtins.diagnostics.pylint.with({
        --  diagnostics_postprocess = function(diagnostic)
        --     diagnostic.code = diagnostic.message_id
        --   end,
        -- }),
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,

        -- JavaScript + TypeScript
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint"),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
