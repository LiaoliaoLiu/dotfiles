local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<esc>', ':nohlsearch<cr>')
map('n', '<leader>v', ':e $MYVIMRC<cr>')
map('n', '<leader>so', ':source $MYVIMRC<cr>')
map('n', '<leader>w', ':w<cr>')
map('n', '<leader>q', ':q!<cr>')
map('i', '{<cr>', '{<cr>}<esc>ko')
map("n", "<C-p>", [[:lua require('telescope.builtin').find_files{}<CR>]])
map("n", "<leader>fg", [[:lua require('telescope.builtin').live_grep{}<CR>]])
map("n", "<leader>fb", [[:lua require('telescope.builtin').buffers{}<CR>]])
