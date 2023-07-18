-- Config
local dracula_status, dracula = pcall(require, "dracula")
if not dracula_status then
	print("Dracula not installed")
	return
end

dracula.setup({
	show_end_of_buffer = true,
	transparent_bg = true,
	italic_comment = true,
})

local status, _ = pcall(vim.cmd, "colorscheme dracula")
if not status then
	print("Color scheme not installed")
	return
end

-- transparency
vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
