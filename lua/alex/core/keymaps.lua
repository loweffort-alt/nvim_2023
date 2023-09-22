local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("n", "<leader>w", ":w <CR>") -- Guardar
keymap.set("n", "<leader>q", ":q <CR>") -- Salir d nvim
keymap.set("n", "<leader>o", "o <ESC>") -- Salir d nvim
keymap.set("n", "<leader>O", "O <CR>") -- Salir d nvim
keymap.set("n", "<A-j>", "10<C-E>") -- Bajar 10 líneas
keymap.set("n", "<A-k>", "10<C-Y>") -- Subir 10 líneas
keymap.set("n", "x", '"_x') -- Borrar sin yankear

keymap.set("n", "<leader>sv", "<C-w>v") -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Equal window width
keymap.set("n", "<leader>sx", ":close<CR>") -- Close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- Open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- Close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- Go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- Go to prev tab

keymap.set("i", "jk", "<ESC>") -- Salir modo insert
keymap.set("i", "<A-h>", "<Left>") -- Mover cursor imode
keymap.set("i", "<A-j>", "<Down>") -- Mover cursor imode
keymap.set("i", "<A-k>", "<Up>") -- Mover cursor imode
keymap.set("i", "<A-l>", "<Right>") -- Mover cursor imode

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- Open Telescope (file navigation)
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- Open Telescope (file navigation)
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- Open Telescope (file navigation)
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- Open buffers (file navigation)
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- Open Telescope (file navigation)

keymap.set("n", "<leader>nj", ":NvimTreeToggle <CR>") -- Abrir nvim-tree

keymap.set("n", "<leader>s", ":HopPattern <CR>") -- Abrir nvim-tree
