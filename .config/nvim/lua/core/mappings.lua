local is_available = katvim.is_available
local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-j>', '<C-w>j', opts)

map('i', '<C-h>', '<left>', opts)
map('i', '<C-l>', '<right>', opts)
map('i', '<C-k>', '<up>', opts)
map('i', '<C-j>', '<down>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

map('n', '<A-j>', ':m .+1<CR>', opts)
map('n', '<A-k>', ':m .-2<CR>', opts)
map('i', '<A-k>', '<ESC>:m .-2<CR>==gi', opts)
map('i', '<A-j>', '<ESC>:m .+1<CR>==gi', opts)
map('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
map('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

map('n', '<ESC>', ':noh<cr>', opts)

--Quick delete word on insert mode
map("i", "<C-w>", "<C-O>diw", opts)

map("n", "<C-w>-", "<cmd>:sp<cr>", opts)
map("n", "<C-w>\\", "<cmd>:vsp<cr>", opts)

map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)

map("n", "<TAB>", "<cmd>BufferLineCycleNext<CR>", opts)
map("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<CR>", opts)