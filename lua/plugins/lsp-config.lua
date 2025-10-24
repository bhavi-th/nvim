return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup ({
        ensure_installed = {
          "lua_ls",
          "vimls",
          "ts_ls",
          "html",
          "cssls",
          "clangd",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()

      vim.lsp.enable("lua_ls")

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})

      vim.lsp.enable("ts_ls")

      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          spacing = 2,
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

    end
  }
}
