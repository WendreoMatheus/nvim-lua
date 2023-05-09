vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- save file on ctrl s
keymap.set("n", "<C-s>", ":w<CR>")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- plugin keymaps

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize current view/window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- vim tests
keymap.set("n", "<leader>t", ":TestNearest<CR>")
keymap.set("n", "<leader>T", ":TestFile<CR>")
keymap.set("n", "<leader>a", ":TestSuite<CR>")
keymap.set("n", "<leader>l", ":TestLast<CR>")
keymap.set("n", "<leader>g", ":TestVisit<CR>")

-- vim fugitive
keymap.set("n", "<leader>gs", ":Git<CR>")
keymap.set("n", "<leader>gc", ":Git commit -v -q<CR>")
keymap.set("n", "<leader>gt", ":Git commit -v -q %:p<CR>")
keymap.set("n", "<leader>gd", ":Gdiff<CR>")
keymap.set("n", "<leader>ge", ":Gedit<CR>")
keymap.set("n", "<leader>gr", ":Gread<CR>")
keymap.set("n", "<leader>gw", ":Gwrite<CR><CR>")
keymap.set("n", "<leader>gl", ":silent! Glog<CR>:bot copen<CR>")
keymap.set("n", "<leader>gp", ":Ggrep<Space>")
keymap.set("n", "<leader>gm", ":Gmove<Space>")
keymap.set("n", "<leader>gb", ":Git branch<Space>")
keymap.set("n", "<leader>go", ":Git checkout<Space>")
keymap.set("n", "<leader>gps", ":Dispatch! git push<CR>")
keymap.set("n", "<leader>gpl", ":Dispatch! git pull<CR>")

-- buffers
keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>")
keymap.set("n", "<leader>bn", ":BufferLineMoveNext<CR>")
keymap.set("n", "<leader>bp", ":BufferLineMovePrev<CR>")
keymap.set("n", "<leader>bl", ":BufferLineCloseLeft<CR>")
keymap.set("n", "<leader>br", ":BufferLineCloseRight<CR>")
