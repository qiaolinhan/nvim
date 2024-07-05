--[[--
File: header_config.lua
Author: Linhan Qiao <qiaolinhan073@gmail.com>
Date: 2024-03-27
Last Modified By: Linhan Qiao <qiaolinhan073@gmail.com>
-----
MIT license
--]]--

vim.g.header_auto_add_header = 1 --default 0
-- vim.g.header_auto_update_header = 1 --default 0
vim.g.header_alignment = 0 --default 1
vim.g.header_max_size = 20

vim.g.header_field_filename = 1 --default 1, toggles 'File: header_config.lua
vim.g.header_filed_timestamp = 0 --default 1, toggles 'Date:'
vim.g.header_field_timestamp_format = '%Y-%m-%d'
vim.g.header_field_modified_timestamp = 0 --default 1

vim.g.header_field_last_separator = 1 --default 0
vim.g.header_cfg_comment_char = '#' --default #

vim.g.header_field_author = 'Linhan Qiao'
vim.g.header_field_author_email = 'qiaolinhan073@gmail.com'
vim.g.header_field_copyright = 'MIT license' --default ''
vim.g.header_field_lisence_id = 'BSD-3-Clause' --default ''

-- map <F4> :AddHeader<CR>

