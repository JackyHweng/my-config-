local keymap = vim.keymap

-- -- [[ Basic Keymaps ]]
-- -- Set <space> as the leader key
-- -- See `:help mapleader`
-- --  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.user_emmet_leader_key = '<c-y>'


keymap.set('n', '<C-c>', '<Nop>')
keymap.set('n', 'x', '"_x')


-- jk mapping Esc
keymap.set("i", "jk", "<Esc>")

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-A>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'sh', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
-- keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', '<c-h>', '<C-w>h')
keymap.set('', '<c-k>', '<C-w>k')
keymap.set('', '<c-j>', '<C-w>j')
keymap.set('', '<c-l>', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Nvimtree setting
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Toggleterm setting
keymap.set('n', '<leader>gg', ':lua _LAZYGIT_TOGGLE()<CR>')
keymap.set('n', '<leader>tt', ':exe v:count1 . "ToggleTerm"<CR>')

-- base opt
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')
keymap.set('', 'H', '^')
keymap.set('', 'L', '$')

-- search
