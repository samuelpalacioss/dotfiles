vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.textwidth = 110
vim.opt.formatoptions = "tcqrn"

require("config.lazy")
