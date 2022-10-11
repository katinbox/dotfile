local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwords
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Move around
keymap.set('i', '<C-h>', '<left>')
keymap.set('i', '<C-j>', '<down>')
keymap.set('i', '<C-k>', '<up>')
keymap.set('i', '<C-l>', '<right>')

keymap.set('n', '<A-j>', ':m .+1<CR>')
keymap.set('n', '<A-k>', ':m .-2<CR>')
keymap.set('i', '<A-k>', '<ESC>:m .-2<CR>==gi')
keymap.set('i', '<A-j>', '<ESC>:m .+1<CR>==gi')
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Escape highlight search
keymap.set('n', '<ESC>', '<cmd>:noh<cr>', { noremap = true, silent = true })

-- Close current buffer
keymap.set('n', '<Space>x', '<cmd>:bd<cr>')

