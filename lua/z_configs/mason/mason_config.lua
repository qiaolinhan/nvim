require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }


})

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
}

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}

-- -- mason.lua
-- local mason_status, mason = pcall(require, "mason")
-- if not mason_status then
--  vim.notify("没有找到 mason")
--  return
-- end
--
-- local nlsp_status, nvim_lsp = pcall(require, "lspconfig")
-- if not nlsp_status then
--  vim.notify("没有找到 lspconfig")
--  return
-- end
--
-- local mlsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
-- if not mlsp_status then
--  vim.notify("没有找到 mason-lspconfig")
--  return
-- end
--
--
mason.setup({})
--
-- -- mason.lua
mason_lspconfig.setup({})
-- mason_lspconfig.setup({
--  automatic_installation = true,
--  ensure_installed = { "lua_ls", "rust_analyzer" },
-- })
--
--
-- function LspKeybind(client, bufnr)
--     local function buf_set_keymap(...)
-- 	vim.api.nvim_buf_set_keymap(bufnr, ...)
-- 	end
--  -- key_binding
--     require("mason_keybindings").lspKeybinding(buf_set_keymap)
-- end
--
-- nvim_lsp.lua_ls.setup({
--     on_attaach = Lspbind,
--     on_init = function(client)
-- 	local path = client.workspace_folders[1].name
-- 	    if not vim.loop.fs_stat(path .. "/.luarc.json") and not vim.loop.fs_stat(path .. "/.luarc.jsonc") then
-- 		client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
-- 		    Lua = {
-- 			runtime = {
-- 			    version = "LuaJIT",
-- 			},
-- 		    workspace = {
-- 			    checkThirdParty = false,
-- 			    library = {
-- 				vim.env.VIMRUNTIME,
-- 				},
-- 			    },
-- 			},
-- 		    })
--
-- 		client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
-- 	    end
-- 	return true
--     end,
--     })
