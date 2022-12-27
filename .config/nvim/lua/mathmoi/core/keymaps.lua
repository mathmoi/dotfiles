vim.g.mapleader = " "

local km = vim.keymap -- for conciseness

-- General keymaps
km.set("i", "jk", "<ESC>")                -- Alias for escape

km.set("n", "<leader>nh", ":nohl<CR>")    -- No search highlights

km.set("n", "<leader>sv", "<C-w>v")
km.set("n", "<leader>sh", "<C-w>s")
km.set("n", "<leader>se", "<C-w>=")
km.set("n", "<leader>sc", ":close<CR>")

km.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
km.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
km.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab

-- vim-maximizer
km.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
km.set("n", "<leader>ee", ":NvimTreeFocus<CR>")
km.set("n", "<leader>et", ":NvimTreeToggle<CR>")

-- telescope
km.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
km.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
km.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
km.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
km.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
