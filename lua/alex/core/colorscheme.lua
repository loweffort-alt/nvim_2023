--local status, _ = pcall(vim.cmd, "colorscheme eva01")
local status, tokyonight = pcall(require, "tokyonight")
--local status, gruvbox = pcall(require, "gruvbox")
if not status then
	print("Colorscheme not found! (evangelion theme is GODLIKE)")
	return
end

tokyonight.setup({
  style = "night",
  transparent = true,
})

vim.cmd("colorscheme tokyonight")
