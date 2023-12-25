local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- a is same qwerty/dvorak
vim.keymap.set("n", "<leader>a", mark.add_file)
-- C-e is dvorak, C-d is querty (taken by motion), C-g is fine b/s home row
vim.keymap.set("n", "<C-g>", ui.toggle_quick_menu)

-- prime uses dvorak, these are his same bindings but with qwerty
vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-;>", function() ui.nav_file(3) end)
