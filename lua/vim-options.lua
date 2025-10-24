vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3c3c3c" })

