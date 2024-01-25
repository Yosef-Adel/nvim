vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- this for veartical marker to not exceed 80 chars
-- vim.opt.colorcolumn = "80"


-- Define your highlight groups
vim.cmd("highlight MyNormal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE")
vim.cmd("highlight MyNormalNC ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE")

-- Set winhighlight using Lua
local win_id = vim.api.nvim_get_current_win()
vim.api.nvim_win_set_option(win_id, 'winhighlight', 'Normal:MyNormal,NormalNC:MyNormalNC')

-- Set tree banner off
vim.g.netrw_banner = 0
