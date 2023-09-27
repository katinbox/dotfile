vim.keymap.set("n", "ha", function()
    require("harpoon.mark").add_file()
end)
vim.keymap.set("n", "hm", function()
    require("harpoon.ui").toggle_quick_menu()
end)
vim.keymap.set("n", "hn", function()
    require("harpoon.ui").nav_next()
end)
vim.keymap.set("n", "he", function()
    require("harpoon.ui").nav_prev()
end)
