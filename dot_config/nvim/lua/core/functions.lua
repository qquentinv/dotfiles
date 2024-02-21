local M = {}

function M.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vin.fn.getreq('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end

return M
