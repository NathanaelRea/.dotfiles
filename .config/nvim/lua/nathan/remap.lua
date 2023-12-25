vim.g.mapleader = " "

-- project view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlight with j/k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move line below to this link, keep cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- C-d and C-u with cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search with cursor centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep buffer with replace
vim.keymap.set("x", "<leader>p", [["_dP]])

-- asbjornHaland: copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register in n/v mode
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- disable ex mode
vim.keymap.set("n", "Q", "<nop>")

-- quick fix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace word cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- reload config with shortcut
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
