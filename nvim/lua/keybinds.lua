local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

-- writing

-- SoftPencil mode on/off
keymap ('n', '<F8>', ':SoftPencil<bar><CR>')
