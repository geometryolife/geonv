local G = require('G')

G.map({
    -- 设置s t 无效 ;=: ,重复上一次宏操作
    { 'n', 's',           '<Nop>',   {} },
    { 'n', '+',           '<C-a>',   { noremap = true } },
    { 'n', '_',           '<C-x>',   { noremap = true } },
    -- { 'n', ',',           '@q',      { noremap = true } },

    { 'n', '<Leader><CR>',          ':set nohlsearch!<CR>', { noremap = true } },

    -- 快速删除
    { 'n', '<bs>',        '"_ciw',   { noremap = true } },
    -- { 'i', '<C-h>',       'col(".") == col("$") ? \'<Esc>"_db"_xa\' : \'<Esc>"_db"_xi\'', { noremap = true, expr = true } },

    -- ,打断
    { 'n', '<C-j>',       'f,a<CR><Esc>', { noremap = true } },
    { 'i', '<C-j>',       '<Esc>f,a<CR>', { noremap = true } },

    { 'i', '<C-p', '<Up>', { noremap = true } },
    { 'i', '<C-n', '<Down>', { noremap = true } },
    { '!', '<C-b', '<Left>', { noremap = true } },
    { '!', '<C-f', '<Right>', { noremap = true } },
    { '!', '<C-a>',       '<Home>',  { noremap = true } },
    { '!', '<C-e>',       '<End>',   { noremap = true } },
    -- { 'c', '<Up>',        '<C-p>',   { noremap = true } },
    -- { 'c', '<Down>',      '<C-n>',   { noremap = true } },

    -- c-s = :%s/
    { 'n', '<c-s>',       ':<c-u>%s/\\v//gc<left><left><left><left>', { noremap = true } },
    { 'v', '<c-s>',             ':s/\\v//gc<left><left><left><left>', { noremap = true } },

    { 'v', '<BS>',        '"_d',     { noremap = true } },
    -- { 'n', 'x',           '"_x',     { noremap = true } },
    -- { 'v', 'x',           '"_x',     { noremap = true } },
    -- { 'n', 'Y',           'y$',      { noremap = true } },
    -- { 'v', 'c',           '"_c',     { noremap = true } },
    -- { 'v', 'p',           'pgvy',    { noremap = true } },
    -- { 'v', 'P',           'Pgvy',    { noremap = true } },

    { 'n', 'S',           ':call v:lua.MagicSave()<CR>', { noremap = true, silent = true } },
    { 'v', 'S',           ':call v:lua.MagicSave()<CR>', { noremap = true, silent = true } },
    { 'n', 'Q',           ':q<CR>', { noremap = true, silent = true } },

    { 'v', '<',           '<gv',     { noremap = true } },
    { 'v', '>',           '>gv',     { noremap = true } },

    -- 选中全文 选中{ 复制全文
    { 'n', '<Leader>wa', 'ggVG', { noremap = true }},
    { 'n', '<m-a>',       'ggVG',    { noremap = true } },
    { 'n', '<m-s>',       'vi{',     { noremap = true } },


    -- alt + key 操作
    { 'i', '<m-d>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<m-r>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<m-o>',       '<Esc>o',           { noremap = true } },
    { 'i', '<m-O>',       '<Esc>O',           { noremap = true } },
    { 'n', '<m-d>',       '"_diw',            { noremap = true } },
    { 'n', '<m-r>',       '"_ciw',            { noremap = true } },

    -- windows: sp 上下窗口 sv 左右分屏 sc关闭当前 so关闭其他 s方向切换
    { 'n', 'sv',          ':vsp<cr><c-w>w',   { noremap = true } },
    { 'n', 'sp',          ':sp<cr><c-w>w',    { noremap = true } },
    { 'n', 'sc',          ':close<cr>',       { noremap = true } },
    { 'n', 'so',          ':only<cr>',        { noremap = true } },
    { 'n', 's<Left>',     '<c-w>h',           { noremap = true } },
    { 'n', 's<Right>',    '<c-w>l',           { noremap = true } },
    { 'n', 's<Up>',       '<c-w>k',           { noremap = true } },
    { 'n', 's<Down>',     '<c-w>j',           { noremap = true } },
    { 'n', '<c-Space>',   '<c-w>w',           { noremap = true } },
    { 'n', 's=',          '<c-w>=',           { noremap = true } },
    { 'n', '<m-.>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10>' : '<c-w>10<'", { noremap = true, expr = true } },
    { 'n', '<m-,>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10<' : '<c-w>10>'", { noremap = true, expr = true } },

    -- buffers
    { 'n', 'W',           ':bw<cr>',          { noremap = true, silent = true } },
    { 'n', 'ss',          ':bn<cr>',          { noremap = true, silent = true } },
    { 'n', '<m-left>',    ':bp<cr>',          { noremap = true, silent = true } },
    { 'n', '<m-right>',   ':bn<cr>',          { noremap = true, silent = true } },
    { 'v', '<m-left>',    '<esc>:bp<cr>',     { noremap = true, silent = true } },
    { 'v', '<m-right>',   '<esc>:bn<cr>',     { noremap = true, silent = true } },
    { 'i', '<m-left>',    '<esc>:bp<cr>',     { noremap = true, silent = true } },
    { 'i', '<m-right>',   '<esc>:bn<cr>',     { noremap = true, silent = true } },

    -- tt 打开一个10行大小的终端
    { 'n', 'tt',          ':below 10sp | term<cr>a', { noremap = true, silent = true } },

    -- 切换是否wrap
    { 'n', '\\w',         "&wrap == 1 ? ':set nowrap<cr>' : ':set wrap<cr>'", { noremap = true, expr = true } },

    -- 折叠
    { 'n', '-',           "za", { noremap = true, silent = true } },
    { 'v', '-',           ':call v:lua.MagicFold()<CR>', { noremap = true, silent = true } },

    -- space 行首行尾跳转
    -- { 'n', '<space>',     ':call v:lua.MagicMove()<cr>', { noremap = true, silent = true } },
    { 'n', '0',           '%', { noremap = true } },
    { 'v', '0',           '%', { noremap = true } },

    -- 驼峰转换
    -- { 'v', 'T',           ':call v:lua.MagicToggleHump(v:true)<CR>', { noremap = true, silent = true } },
    -- { 'v', 't',           ':call v:lua.MagicToggleHump(v:false)<CR>', { noremap = true, silent = true } },
})

-- 光标在$ 0 ^依次跳转
function MagicMove()
    local first = 1
    local head = #G.fn.getline('.') - #G.fn.substitute(G.fn.getline('.'), '^\\s*', '', 'G') + 1
    local before = G.fn.col('.')
    G.fn.execute(before == first and first ~= head and 'norm! ^' or 'norm! $')
    local after = G.fn.col('.')
    if before == after then
        G.fn.execute('norm! 0')
    end
end

-- 1 当目录不存在时 先创建目录, 2 当前文件是acwrite时, 用sudo保存
function MagicSave()
    if G.fn.empty(G.fn.glob(G.fn.expand('%:p:h'))) then G.fn.system('mkdir -p ' .. G.fn.expand('%:p:h')) end
    if G.o.buftype == 'acwrite' then
        G.fn.execute('w !sudo tee > /dev/null %')
    else
        G.fn.execute('w')
    end
end

-- 驼峰转换 MagicToggleHump(true) 首字母大写 MagicToggleHump(false) 首字母小写
function MagicToggleHump(upperCase)
    G.fn.execute('normal! gv"tx')
    local w = G.fn.getreg('t')
    local toHump = w:find('_') ~= nil
    if toHump then
        w = w:gsub('_(%w)', function(c) return c:upper() end)
    else
        w = w:gsub('(%u)', function(c) return '_' .. c:lower() end)
    end
    if w:sub(1, 1) == '_' then w = w:sub(2) end
    if upperCase then w = w:sub(1,1):upper() .. w:sub(2) end
    G.fn.setreg('t', w)
    G.fn.execute('normal! "tP')
end

-- 折叠(限制最大折叠层数 1)
function MagicFold()
    local max = 1
    if G.fn.foldlevel("'<") > 0 then G.fn.execute("normal! '<zd") end
    if G.fn.foldlevel("'>") > 0 then G.fn.execute("normal! '>zd") end
    G.fn.execute('normal! gvzf')
end
