-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<C-n>', '<cmd> NvimTreeToggle <CR>', { desc = 'Toggle nvimtree' })


vim.keymap.set('n', '<C-h>', "<C-w>h", { desc = "Window left " })
vim.keymap.set('n', '<C-l>', "<C-w>l", { desc = "Window right" })
vim.keymap.set('n', '<C-j>', "<C-w>j", { desc = "Window down " })
vim.keymap.set('n', '<C-k>', "<C-w>k", { desc = "Window up   " })

-- ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },    ["<Esc>"] = { "<cmd> noh <CR>", "Clear highlights" },
-- switch between windows
-- ["<C-h>"] = { "<C-w>h", "Window left " },
-- ["<C-l>"] = { "<C-w>l", "Window right" },
-- ["<C-j>"] = { "<C-w>j", "Window down " },
-- ["<C-k>"] = { "<C-w>k", "Window up   " },
