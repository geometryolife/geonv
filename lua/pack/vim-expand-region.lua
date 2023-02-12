local G = require('G')
local M = {}

function M.config()
    G.map({
        { 'v', 'v', '<Plug>(expand_region_expand)', {silent = true}},
        { 'n', 'b', ':echo "1config"<CR>', {silent = true}},
        { 'n', 'b', ':echo "2config"<CR>', {silent = true}},
    })
    -- do nothing
end

function M.setup()
    G.map({
        { 'n', 'b', ':echo "1setup"<CR>', {silent = true}},
        { 'n', 'b', ':echo "2setup"<CR>', {silent = true}},
        { 'v', 'v', ':echo "Hello"', {silent = true}},
        { 'v', 'V', '<Plug>(expand_region_shrink)', {silent = true}},
    })
end

return M
