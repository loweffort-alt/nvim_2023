local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- Settings recomendados por la documentación d nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})
