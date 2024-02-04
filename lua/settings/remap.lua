vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<c-d>", "<C-d>zz")
vim.keymap.set("n", "<c-u>", "<C-u>zz")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-q>j", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-q>k", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- for saving files
vim.keymap.set("n", ",w", "<cmd> w<CR>")

vim.keymap.set("n", ",f", "<cmd> !tmux neww tmux-sessionizer<CR>")

-- for the terminal just play with it
vim.keymap.set("n", "<leader>ra", "<cmd> CellularAutomaton  make_it_rain<CR>")


