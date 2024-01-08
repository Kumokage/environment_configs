vim.keymap.set("n", "<leader>rk", ":MagmaInit<CR>")
vim.keymap.set("n", "<leader>r", ":MagmaEvaluateLine<CR>",
    { silent = true, noremap = true })
vim.keymap.set("x", "<leader>r", ":<C-u>MagmaEvaluateVisual<CR>",
    { silent = true, noremap = true })
-- vim.keymap.set("n", "<leader>rr", "vih:<C-u>MagmaEvaluateVisual<CR>")
vim.keymap.set("n", "<leader>rc", ":MagmaReevaluateCell<CR>",
    { silent = true, noremap = true })
vim.keymap.set("n", "<leader>rd", ":MagmaDelete<CR>",
    { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ro", ":MagmaShowOutput<CR>",
    { silent = true, noremap = true })
vim.keymap.set("n", "<leader>re", ":noautocmd MagmaEnterOutput<CR>",
    { silent = true, noremap = true })

