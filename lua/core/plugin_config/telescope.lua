local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>tt', builtin.find_files, { noremap = true, silent = true})
vim.keymap.set('n', '<leader>gr', builtin.live_grep, { noremap = true, silent = true })
