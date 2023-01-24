vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "U", "<C-r>")

-- Editor Nav
vim.keymap.set("n", "<C-n>", "<C-d>zz")
vim.keymap.set("n", "<C-p>", "<C-u>zz")

-- Config Edits
vim.keymap.set("n", "<leader>be<cr>", ":edit ~/.bashrc<cr>")

-- File Nav
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>")
vim.keymap.set("n", "<leader>f", ":NvimTreeFindFile<cr>")
vim.keymap.set("n", "<leader>df", ":NvimTreeToggle<cr>")


-- Window/Buffer Nav
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>nb", ":bnext<cr>")
vim.keymap.set("n", "<leader>pb", ":bprevious<cr>")
vim.keymap.set("n", "<leader>nw", "<C-W>l")
vim.keymap.set("n", "<leader>pw", "<C-W>h")
vim.keymap.set("n", "<leader>ww", ":only<cr>")


vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>jq", ":%!jq .")
