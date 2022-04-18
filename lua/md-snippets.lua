-- Increase the speed of writing Markdown.
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,m - [ ] ')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,5 #####<Space><Enter><++><Esc>kA')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,` ·')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,. <Space>=><Space>')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,> <Space>→<Space>')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,= ===<Space>Output<Space>===')
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,v -<Space>`<++>`<Space><++>')
-- vim.api.nvim_command('autocmd Filetype rust inoremap <buffer> ,= // ===<Space>Output<Space>===<Enter>')
vim.api.nvim_command('autocmd Filetype rust inoremap <buffer> ,= // ===<Space>Output<Space>===<Esc>')



local weeks = {"星期天","星期一","星期二","星期三","星期四","星期五","星期六"}
local tt = os.time()

local function getWeek(time)
  local w = os.date("%w", time)
  return weeks[w + 1]
end

local date = os.date("%Y年%m月%d日，", tt)
date = date .. getWeek(tt)


-- Fix bug, can't input chinese quotation mark
vim.api.nvim_command('autocmd Filetype markdown inoremap <buffer> ,r “”')
