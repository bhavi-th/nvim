return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<C-n>", function()
      vim.cmd("Neotree")
      vim.cmd("vertical resize 30")
    end, {})

    vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { noremap = true, silent = true })

    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {},
        },
      },
    })

  end
}
