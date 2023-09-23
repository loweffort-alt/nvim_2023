local indent_blankline_setup, indent_blankline = pcall(require, "indent_blankline")
if not indent_blankline_setup then
	return
end
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#2c2d2f gui=nocombine]])

vim.opt.list = true
vim.opt.listchars:append("space:⋅")

indent_blankline.setup({
	space_char_blankline = " ",
	show_current_context = true,
	char_highlight_list = {
		"IndentBlanklineIndent1",
	},
})
