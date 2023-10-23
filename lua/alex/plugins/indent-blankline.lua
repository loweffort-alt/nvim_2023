local indent_blankline_setup, ibl = pcall(require, "ibl")
if not indent_blankline_setup then
	return
end
local highlight = {
    "RainbowRed",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#2c2d2f" })
end)

ibl.setup({
  indent = { highlight = highlight }
})
