--[[--
File: mason_keybinding.lua
Author: Linhan Qiao <qiaolinhan073@gmail.com>
Date: 2024-04-28
Last Modified By: Linhan Qiao <qiaolinhan073@gmail.com>
-----
MIT license
--]]--

-- keybinding.lua
-- lsp 
pluginKeys.lspKeybinding = function(mapbuf)
 -- rename
 mapbuf("n", "<leader>r", ":lua vim.lsp.buf.rename<CR>", opt)
 -- code action
 mapbuf("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opt)
 -- go to definition
 mapbuf("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opt)
 -- show hover
 mapbuf("n", "gh", ":lua vim.lsp.buf.hover()<CR>", opt)
 -- format
 mapbuf("n", "<leader>=", ":lua vim.lsp.buf.format { async = true }<CR>", opt)
end


-- keybindings.lua
pluginKeys.cmp = function(cmp)
 return {
  -- 出现补全
  ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
  -- 取消
  ["<A-,>"] = cmp.mapping({
   i = cmp.mapping.abort(),
   c = cmp.mapping.close(),
  }),
  -- 上一个
  ["<C-k>"] = cmp.mapping.select_prev_item(),
  -- 下一个
  ["<C-j>"] = cmp.mapping.select_next_item(),
  -- 确认
  ["<CR>"] = cmp.mapping.confirm({
   select = true,
   behavior = cmp.ConfirmBehavior.Replace,
  }),
 }
end
