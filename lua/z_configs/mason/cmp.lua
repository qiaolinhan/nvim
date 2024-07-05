
-- cmp.lua
local status, cmp = pcall(require, "cmp")
if not status then
    vim.notify("找不到 cmp")
    return
end


cmp.setup({
    -- 省略其他配置
    mapping = require("mason_keybindings").cmp(cmp),
})
