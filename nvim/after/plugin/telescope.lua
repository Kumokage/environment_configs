local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set("n", "<leader>pc", builtin.grep_string, {}) -- find string in current working directory as you type
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})   -- find string under cursor in current working directory
vim.keymap.set("n", "<leader>po", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>pO", builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gfc", builtin.git_bcommits, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
