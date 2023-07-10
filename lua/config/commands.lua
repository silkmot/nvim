local autocmd = vim.api.nvim_create_autocmd

-- Silently update a file if it has been modified
autocmd('FocusGained', {
	callback = function()
		vim.cmd 'silent! checktime %'
	end,
})

-- Saving the cursor position when switching modes
autocmd('InsertLeave', {
	callback = function()
		vim.cmd 'normal `^'
	end,
})

-- Disable duplicate comments
autocmd('BufEnter', {
	callback = function()
		vim.opt.formatoptions:remove { 'c', 'r', 'o' }
	end,
})

-- Return to the last cursor position
autocmd('BufReadPost', {
  callback = function()
    local getMark = vim.api.nvim_buf_get_mark(0, '"')
  	local getCount = vim.api.nvim_buf_line_count(0)
    if getMark[1] > 0 and getMark[1] <= getCount then
      pcall(vim.api.nvim_win_set_cursor, 0, getMark)
    end
  end,
})

-- Closing some file types by default key
autocmd('FileType', {
	pattern = { 'help', 'checkhealth' },
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set('n', 'q', '<cmd>close<cr>', {
			buffer = event.buf,
			silent = true
		})
	end,
})

-- Deleting unused indents when saving a file
autocmd('BufWritePre', {
	callback = function()
		vim.cmd([[ keeppatterns %s/\s\+$//e ]])
	end,
})