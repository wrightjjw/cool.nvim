local M = {}

M.nolineyank = function(start, fin)
    local lines = vim.api.nvim_buf_get_lines(0, start - 1, fin, false)
    local final = ''
    for i, _ in pairs(lines) do
        local line = lines[i]
        final = final .. string.gsub(line, '\n', ' ')
    end
    vim.fn.setreg("+", final)
end

return M
