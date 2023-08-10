-- ===== Other Keybinds (defined in plugins) =====
-- ctrl+\ : toggleterm
-- lsp:
--  gr     : find references
--  gd     : go to definition
--  k      : hover

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
set = vim.keymap.set

-- paste in a new line below the current line
set("n", "<leader>p", "m`o<esc>p``", { desc = "paste below current line" })

-- move the cursor based on physical lines, not the actual lines.
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })

-- go to start or end of line easier
set("i", "<c-h>", "<home>")
set("i", "<c-l>", "<end>")

-- indent / unindent continuously
set("x", "<", "<gv")
set("x", ">", ">gv")

-- move line(s) up and down
set("n", "<A-k>", 'ddkP', { desc = "move line up" })
set("n", "<A-j>", 'ddp', { desc = "move line down" })
set("x", "<A-k>", ":m '<-2<CR>gv=gv")
set("x", "<A-j>", ":m '>+1<CR>gv=gv")

-- split / switch panes
set("n", "<C-\\>", ":vsplit<CR>")
set("n", "<A-\\>", ":split<CR>")
set("n", "<C-h>", "<c-w>h")
set("n", "<C-l>", "<C-W>l")
set("n", "<C-k>", "<C-W>k")
set("n", "<C-j>", "<C-W>j")

-- change buffers
set("n", "H", ":bprev<CR>", { silent = true })
set("n", "L", ":bnext<CR>", { silent = true })

-- switch tabs
set("n", "<Tab>", ":tabnext<CR>", { silent = true })
set("n", "<S-Tab>", ":tabprev<CR>", { silent = true })

-- comment (ctrl+/)
set("n", "<C-_>", ":CommentToggle<CR>", { silent = true })
set("x", "<C-_>", ":CommentToggle<CR>gv", { silent = true })
set("i", "<C-_>", "<C-o>:CommentToggle<CR>", { silent = true })

-- clear highlights
set({ "n", "i" }, "<C-n>", "<cmd>nohl<CR>", { silent = true })

-- toggle fold
set('n', '<F3>', 'za', { silent = true })

-- ===== Plugins =====

-- nvim-tree
set('n', '<C-p>', ':NvimTreeToggle<CR>')

-- telescope
set('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>')
set('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>')
set('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>')

-- lsp
set('n', '<leader>e', vim.diagnostic.open_float)
set('n', '<C-[>', vim.diagnostic.goto_prev)
set('n', '<C-]>', vim.diagnostic.goto_next)
